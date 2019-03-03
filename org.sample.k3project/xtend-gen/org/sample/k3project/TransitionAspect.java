package org.sample.k3project;

import fr.inria.diverse.k3.al.annotationprocessor.Aspect;
import fr.inria.diverse.k3.al.annotationprocessor.Step;
import org.sample.k3project.TransitionAspectTransitionAspectProperties;
import tP1_IDM.Transition;

@Aspect(className = Transition.class)
@SuppressWarnings("all")
public class TransitionAspect {
  @Step
  public static void fire(final Transition _self) {
    final org.sample.k3project.TransitionAspectTransitionAspectProperties _self_ = org.sample.k3project.TransitionAspectTransitionAspectContext.getSelf(_self);
    fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepCommand command = new fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepCommand() {
    	@Override
    	public void execute() {
    		_privk3_fire(_self_, _self);
    	}
    };
    fr.inria.diverse.k3.al.annotationprocessor.stepmanager.IStepManager stepManager = fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepManagerRegistry.getInstance().findStepManager(_self);
    if (stepManager != null) {
    	stepManager.executeStep(_self,command,"Transition","fire");
    } else {
    	command.execute();
    }
    ;;
  }
  
  protected static void _privk3_fire(final TransitionAspectTransitionAspectProperties _self_, final Transition _self) {
    throw new Error("Unresolved compilation problems:"
      + "\nThe method or field tgt is undefined for the type Transition"
      + "\nThe method or field src is undefined for the type Transition"
      + "\nThe method or field tgt is undefined for the type Transition"
      + "\nThe method or field action is undefined for the type Transition"
      + "\nname cannot be resolved"
      + "\nfsm cannot be resolved"
      + "\ncurrentState cannot be resolved"
      + "\noutputBuffer cannot be resolved"
      + "\nenqueue cannot be resolved"
      + "\nconsummedString cannot be resolved"
      + "\nconsummedString cannot be resolved"
      + "\n+ cannot be resolved"
      + "\nunderProcessTrigger cannot be resolved");
  }
}
