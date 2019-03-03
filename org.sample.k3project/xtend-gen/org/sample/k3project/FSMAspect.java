package org.sample.k3project;

import fr.inria.diverse.k3.al.annotationprocessor.Aspect;
import fr.inria.diverse.k3.al.annotationprocessor.ReplaceAspectMethod;
import fr.inria.diverse.k3.al.annotationprocessor.Step;
import org.sample.k3project.FSMAspectStateMachineAspectProperties;
import tP1_IDM.State;
import tP1_IDM.StateMachine;

@Aspect(className = StateMachine.class)
@SuppressWarnings("all")
public class FSMAspect {
  public static void initializeFSM(final StateMachine _self) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    _privk3_initializeFSM(_self_, _self);;
  }
  
  @Step
  @ReplaceAspectMethod
  public static void run(final StateMachine _self) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepCommand command = new fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepCommand() {
    	@Override
    	public void execute() {
    		_privk3_run(_self_, _self);
    	}
    };
    fr.inria.diverse.k3.al.annotationprocessor.stepmanager.IStepManager stepManager = fr.inria.diverse.k3.al.annotationprocessor.stepmanager.StepManagerRegistry.getInstance().findStepManager(_self);
    if (stepManager != null) {
    	stepManager.executeStep(_self,command,"StateMachine","run");
    } else {
    	command.execute();
    }
    ;;
  }
  
  public static State currentState(final StateMachine _self) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    Object result = null;
    result = _privk3_currentState(_self_, _self);;
    return (tP1_IDM.State)result;
  }
  
  public static void currentState(final StateMachine _self, final State currentState) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    _privk3_currentState(_self_, _self,currentState);;
  }
  
  public static String underProcessTrigger(final StateMachine _self) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    Object result = null;
    result = _privk3_underProcessTrigger(_self_, _self);;
    return (java.lang.String)result;
  }
  
  public static void underProcessTrigger(final StateMachine _self, final String underProcessTrigger) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    _privk3_underProcessTrigger(_self_, _self,underProcessTrigger);;
  }
  
  public static String consummedString(final StateMachine _self) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    Object result = null;
    result = _privk3_consummedString(_self_, _self);;
    return (java.lang.String)result;
  }
  
  public static void consummedString(final StateMachine _self, final String consummedString) {
    final org.sample.k3project.FSMAspectStateMachineAspectProperties _self_ = org.sample.k3project.FSMAspectStateMachineAspectContext.getSelf(_self);
    _privk3_consummedString(_self_, _self,consummedString);;
  }
  
  protected static void _privk3_initializeFSM(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self) {
    throw new Error("Unresolved compilation problems:"
      + "\nThe method or field initialState is undefined for the type StateMachine");
  }
  
  protected static void _privk3_run(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self) {
    throw new Error("Unresolved compilation problems:"
      + "\nThe method or field inputBuffer is undefined for the type StateMachine"
      + "\nThe method step(String) is undefined for the type State"
      + "\ndequeue cannot be resolved");
  }
  
  protected static State _privk3_currentState(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self) {
    try {
    	for (java.lang.reflect.Method m : _self.getClass().getMethods()) {
    		if (m.getName().equals("getCurrentState") &&
    			m.getParameterTypes().length == 0) {
    				Object ret = m.invoke(_self);
    				if (ret != null) {
    					return (tP1_IDM.State) ret;
    				} else {
    					return null;
    				}
    		}
    	}
    } catch (Exception e) {
    	// Chut !
    }
    return _self_.currentState;
  }
  
  protected static void _privk3_currentState(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self, final State currentState) {
    boolean setterCalled = false;
    try {
    	for (java.lang.reflect.Method m : _self.getClass().getMethods()) {
    		if (m.getName().equals("setCurrentState")
    				&& m.getParameterTypes().length == 1) {
    			m.invoke(_self, currentState);
    			setterCalled = true;
    		}
    	}
    } catch (Exception e) {
    	// Chut !
    }
    if (!setterCalled) {
    	_self_.currentState = currentState;
    }
  }
  
  protected static String _privk3_underProcessTrigger(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self) {
    try {
    	for (java.lang.reflect.Method m : _self.getClass().getMethods()) {
    		if (m.getName().equals("getUnderProcessTrigger") &&
    			m.getParameterTypes().length == 0) {
    				Object ret = m.invoke(_self);
    				if (ret != null) {
    					return (java.lang.String) ret;
    				} else {
    					return null;
    				}
    		}
    	}
    } catch (Exception e) {
    	// Chut !
    }
    return _self_.underProcessTrigger;
  }
  
  protected static void _privk3_underProcessTrigger(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self, final String underProcessTrigger) {
    boolean setterCalled = false;
    try {
    	for (java.lang.reflect.Method m : _self.getClass().getMethods()) {
    		if (m.getName().equals("setUnderProcessTrigger")
    				&& m.getParameterTypes().length == 1) {
    			m.invoke(_self, underProcessTrigger);
    			setterCalled = true;
    		}
    	}
    } catch (Exception e) {
    	// Chut !
    }
    if (!setterCalled) {
    	_self_.underProcessTrigger = underProcessTrigger;
    }
  }
  
  protected static String _privk3_consummedString(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self) {
    try {
    	for (java.lang.reflect.Method m : _self.getClass().getMethods()) {
    		if (m.getName().equals("getConsummedString") &&
    			m.getParameterTypes().length == 0) {
    				Object ret = m.invoke(_self);
    				if (ret != null) {
    					return (java.lang.String) ret;
    				} else {
    					return null;
    				}
    		}
    	}
    } catch (Exception e) {
    	// Chut !
    }
    return _self_.consummedString;
  }
  
  protected static void _privk3_consummedString(final FSMAspectStateMachineAspectProperties _self_, final StateMachine _self, final String consummedString) {
    boolean setterCalled = false;
    try {
    	for (java.lang.reflect.Method m : _self.getClass().getMethods()) {
    		if (m.getName().equals("setConsummedString")
    				&& m.getParameterTypes().length == 1) {
    			m.invoke(_self, consummedString);
    			setterCalled = true;
    		}
    	}
    } catch (Exception e) {
    	// Chut !
    }
    if (!setterCalled) {
    	_self_.consummedString = consummedString;
    }
  }
}
