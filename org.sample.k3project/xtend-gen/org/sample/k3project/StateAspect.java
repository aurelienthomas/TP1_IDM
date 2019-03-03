package org.sample.k3project;

import fr.inria.diverse.k3.al.annotationprocessor.Aspect;
import fr.inria.diverse.k3.al.annotationprocessor.Step;
import org.sample.k3project.StateAspectStateAspectProperties;
import tP1_IDM.State;

@Aspect(className = State.class)
@SuppressWarnings("all")
public class StateAspect {
  @Step
  public static void step(final State _self, final String inputString) {
    final org.sample.k3project.StateAspectStateAspectProperties _self_ = org.sample.k3project.StateAspectStateAspectContext.getSelf(_self);
    fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepCommand command = new fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepCommand() {
    	@Override
    	public void execute() {
    		_privk3_step(_self_, _self,inputString);
    	}
    };
    fr.inria.diverse.k3.al.annotationprocessor.stepmanager.IStepManager stepManager = fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepManagerRegistry.getInstance().findStepManager(_self);
    if (stepManager != null) {
    	stepManager.executeStep(_self,command,"State","step");
    } else {
    	command.execute();
    }
    ;;
  }
  
  protected static void _privk3_step(final StateAspectStateAspectProperties _self_, final State _self, final String inputString) {
    throw new Error("Unresolved compilation problems:"
      + "\nThe method filter((Object)=>boolean) is undefined for the type Transition"
      + "\nThe method or field trigger is undefined for the type Object"
      + "\nThe method or field fsm is undefined for the type State"
      + "\nThere is no context to infer the closure\'s argument types from. Consider typing the arguments or put the closures into a typed context."
      + "\nempty cannot be resolved"
      + "\noutputBuffer cannot be resolved"
      + "\nenqueue cannot be resolved"
      + "\nsize cannot be resolved"
      + "\n> cannot be resolved"
      + "\nsize cannot be resolved"
      + "\n> cannot be resolved"
      + "\nget cannot be resolved"
      + "\nfire cannot be resolved");
  }
}
