package org.sample.k3project

import fr.inria.diverse.k3.al.annotationprocessor.Aspect


import fr.inria.diverse.k3.al.annotationprocessor.Step
import fr.inria.diverse.k3.al.annotationprocessor.Main
import fr.inria.diverse.k3.al.annotationprocessor.ReplaceAspectMethod
import tP1_IDM.State
import tP1_IDM.StateMachine
import tP1_IDM.Transition

@Aspect(className=StateMachine)
class FSMAspect {

	public State currentState
	
	public String underProcessTrigger
	public String consummedString
	
	
	def public void initializeFSM(){
		println("init FSM")
		_self.currentState = _self.initialState;
		_self.underProcessTrigger = ""
		_self.consummedString = ""
	}
	
	@Step
	@ReplaceAspectMethod
    def public void run() {
    	_self.underProcessTrigger = _self.inputBuffer.dequeue
    	println("run SM"+_self.name+" step on "+_self.underProcessTrigger)
		_self.currentState.step(_self.underProcessTrigger)
    	_self.underProcessTrigger = ""
	}

}

@Aspect(className=State)
class StateAspect {
	@Step
	def public void step(String inputString) {
		// Get the valid transitions	
		val validTransitions =  _self.outgoing.filter[t | inputString.compareTo(t.trigger) == 0]
		
		if(validTransitions.empty) {
			//just copy the token to the output buffer
			_self.fsm.outputBuffer.enqueue(inputString)
		}
		
		if(validTransitions.size > 1) {
			throw new Exception("Non Determinism")
		}
		
		// Fire transition first transition (could be random%VT.size)
		if(validTransitions.size > 0){
			validTransitions.get(0).fire
			return
		}
		return
		
	}
}


@Aspect(className=Transition)
class TransitionAspect {
	@Step
def public void fire() {
		println("Firing " + _self.name + " and entering " + _self.tgt.name)
		val fsm = _self.src.fsm
		fsm.currentState = _self.tgt
		fsm.outputBuffer.enqueue(_self.action)
		fsm.consummedString = fsm.consummedString + fsm.underProcessTrigger
	}
}
