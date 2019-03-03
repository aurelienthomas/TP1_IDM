// AspectJ classes that have been aspectized and name
package tP1_IDM;
public aspect AspectJStateMachine{
void around (tP1_IDM.StateMachine self)  :target (self) && (call ( void tP1_IDM.StateMachine.run(  ) ) ) { org.sample.k3project.FSMAspect.run(self );}

}
