package org.sample.k3project;

import java.util.Map;
import org.sample.k3project.FSMAspectStateMachineAspectProperties;
import tP1_IDM.StateMachine;

@SuppressWarnings("all")
public class FSMAspectStateMachineAspectContext {
  public final static FSMAspectStateMachineAspectContext INSTANCE = new FSMAspectStateMachineAspectContext();
  
  public static FSMAspectStateMachineAspectProperties getSelf(final StateMachine _self) {
    		if (!INSTANCE.map.containsKey(_self))
    			INSTANCE.map.put(_self, new org.sample.k3project.FSMAspectStateMachineAspectProperties());
    		return INSTANCE.map.get(_self);
  }
  
  private Map<StateMachine, FSMAspectStateMachineAspectProperties> map = new java.util.WeakHashMap<tP1_IDM.StateMachine, org.sample.k3project.FSMAspectStateMachineAspectProperties>();
  
  public Map<StateMachine, FSMAspectStateMachineAspectProperties> getMap() {
    return map;
  }
}
