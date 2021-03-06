/*
 * generated by Xtext 2.12.0
 */
grammar InternalMyDsl;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}
@parser::members {
	private MyDslGrammarAccess grammarAccess;

	public void setGrammarAccess(MyDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleStateMachine
entryRuleStateMachine
:
{ before(grammarAccess.getStateMachineRule()); }
	 ruleStateMachine
{ after(grammarAccess.getStateMachineRule()); } 
	 EOF 
;

// Rule StateMachine
ruleStateMachine 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStateMachineAccess().getGroup()); }
		(rule__StateMachine__Group__0)
		{ after(grammarAccess.getStateMachineAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEString
entryRuleEString
:
{ before(grammarAccess.getEStringRule()); }
	 ruleEString
{ after(grammarAccess.getEStringRule()); } 
	 EOF 
;

// Rule EString
ruleEString 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEStringAccess().getAlternatives()); }
		(rule__EString__Alternatives)
		{ after(grammarAccess.getEStringAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleState
entryRuleState
:
{ before(grammarAccess.getStateRule()); }
	 ruleState
{ after(grammarAccess.getStateRule()); } 
	 EOF 
;

// Rule State
ruleState 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStateAccess().getGroup()); }
		(rule__State__Group__0)
		{ after(grammarAccess.getStateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTransition
entryRuleTransition
:
{ before(grammarAccess.getTransitionRule()); }
	 ruleTransition
{ after(grammarAccess.getTransitionRule()); } 
	 EOF 
;

// Rule Transition
ruleTransition 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTransitionAccess().getGroup()); }
		(rule__Transition__Group__0)
		{ after(grammarAccess.getTransitionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Alternatives_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getStateAssignment_4_0()); }
		(rule__StateMachine__StateAssignment_4_0)
		{ after(grammarAccess.getStateMachineAccess().getStateAssignment_4_0()); }
	)
	|
	(
		{ before(grammarAccess.getStateMachineAccess().getTransitionAssignment_4_1()); }
		(rule__StateMachine__TransitionAssignment_4_1)
		{ after(grammarAccess.getStateMachineAccess().getTransitionAssignment_4_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EString__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); }
		RULE_STRING
		{ after(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); }
		RULE_ID
		{ after(grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__0__Impl
	rule__StateMachine__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getStateMachineAction_0()); }
	()
	{ after(grammarAccess.getStateMachineAccess().getStateMachineAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__1__Impl
	rule__StateMachine__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getStateMachineKeyword_1()); }
	'StateMachine'
	{ after(grammarAccess.getStateMachineAccess().getStateMachineKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__2__Impl
	rule__StateMachine__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getNameAssignment_2()); }
	(rule__StateMachine__NameAssignment_2)
	{ after(grammarAccess.getStateMachineAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__3__Impl
	rule__StateMachine__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getGroup_3()); }
	(rule__StateMachine__Group_3__0)?
	{ after(grammarAccess.getStateMachineAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getAlternatives_4()); }
	(rule__StateMachine__Alternatives_4)*
	{ after(grammarAccess.getStateMachineAccess().getAlternatives_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StateMachine__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group_3__0__Impl
	rule__StateMachine__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getStartKeyword_3_0()); }
	'start'
	{ after(grammarAccess.getStateMachineAccess().getStartKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getStateStartAssignment_3_1()); }
	(rule__StateMachine__StateStartAssignment_3_1)
	{ after(grammarAccess.getStateMachineAccess().getStateStartAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__0__Impl
	rule__State__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateAction_0()); }
	()
	{ after(grammarAccess.getStateAccess().getStateAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__1__Impl
	rule__State__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateKeyword_1()); }
	'State'
	{ after(grammarAccess.getStateAccess().getStateKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__2__Impl
	rule__State__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getNameAssignment_2()); }
	(rule__State__NameAssignment_2)
	{ after(grammarAccess.getStateAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__3__Impl
	rule__State__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getGroup_3()); }
	(rule__State__Group_3__0)?
	{ after(grammarAccess.getStateAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getGroup_4()); }
	(rule__State__Group_4__0)?
	{ after(grammarAccess.getStateAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_3__0__Impl
	rule__State__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getInKeyword_3_0()); }
	'in'
	{ after(grammarAccess.getStateAccess().getInKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getIncommingAssignment_3_1()); }
	(rule__State__IncommingAssignment_3_1)
	{ after(grammarAccess.getStateAccess().getIncommingAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_4__0__Impl
	rule__State__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getOutKeyword_4_0()); }
	'out'
	{ after(grammarAccess.getStateAccess().getOutKeyword_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getOutgoingAssignment_4_1()); }
	(rule__State__OutgoingAssignment_4_1)
	{ after(grammarAccess.getStateAccess().getOutgoingAssignment_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Transition__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__0__Impl
	rule__Transition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getTransitionAction_0()); }
	()
	{ after(grammarAccess.getTransitionAccess().getTransitionAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__1__Impl
	rule__Transition__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getTransitionKeyword_1()); }
	'Transition'
	{ after(grammarAccess.getTransitionAccess().getTransitionKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__2__Impl
	rule__Transition__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getNameAssignment_2()); }
	(rule__Transition__NameAssignment_2)
	{ after(grammarAccess.getTransitionAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__3__Impl
	rule__Transition__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getGroup_3()); }
	(rule__Transition__Group_3__0)?
	{ after(grammarAccess.getTransitionAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getGroup_4()); }
	(rule__Transition__Group_4__0)?
	{ after(grammarAccess.getTransitionAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Transition__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group_3__0__Impl
	rule__Transition__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getToKeyword_3_0()); }
	'to'
	{ after(grammarAccess.getTransitionAccess().getToKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getToAssignment_3_1()); }
	(rule__Transition__ToAssignment_3_1)
	{ after(grammarAccess.getTransitionAccess().getToAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Transition__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group_4__0__Impl
	rule__Transition__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getFromKeyword_4_0()); }
	'from'
	{ after(grammarAccess.getTransitionAccess().getFromKeyword_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getFromAssignment_4_1()); }
	(rule__Transition__FromAssignment_4_1)
	{ after(grammarAccess.getTransitionAccess().getFromAssignment_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StateMachine__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getNameEStringParserRuleCall_2_0()); }
		ruleEString
		{ after(grammarAccess.getStateMachineAccess().getNameEStringParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__StateStartAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getStateStartStateCrossReference_3_1_0()); }
		(
			{ before(grammarAccess.getStateMachineAccess().getStateStartStateEStringParserRuleCall_3_1_0_1()); }
			ruleEString
			{ after(grammarAccess.getStateMachineAccess().getStateStartStateEStringParserRuleCall_3_1_0_1()); }
		)
		{ after(grammarAccess.getStateMachineAccess().getStateStartStateCrossReference_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__StateAssignment_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getStateStateParserRuleCall_4_0_0()); }
		ruleState
		{ after(grammarAccess.getStateMachineAccess().getStateStateParserRuleCall_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__TransitionAssignment_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getTransitionTransitionParserRuleCall_4_1_0()); }
		ruleTransition
		{ after(grammarAccess.getStateMachineAccess().getTransitionTransitionParserRuleCall_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getNameEStringParserRuleCall_2_0()); }
		ruleEString
		{ after(grammarAccess.getStateAccess().getNameEStringParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__IncommingAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getIncommingTransitionCrossReference_3_1_0()); }
		(
			{ before(grammarAccess.getStateAccess().getIncommingTransitionEStringParserRuleCall_3_1_0_1()); }
			ruleEString
			{ after(grammarAccess.getStateAccess().getIncommingTransitionEStringParserRuleCall_3_1_0_1()); }
		)
		{ after(grammarAccess.getStateAccess().getIncommingTransitionCrossReference_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__OutgoingAssignment_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getOutgoingTransitionCrossReference_4_1_0()); }
		(
			{ before(grammarAccess.getStateAccess().getOutgoingTransitionEStringParserRuleCall_4_1_0_1()); }
			ruleEString
			{ after(grammarAccess.getStateAccess().getOutgoingTransitionEStringParserRuleCall_4_1_0_1()); }
		)
		{ after(grammarAccess.getStateAccess().getOutgoingTransitionCrossReference_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTransitionAccess().getNameEStringParserRuleCall_2_0()); }
		ruleEString
		{ after(grammarAccess.getTransitionAccess().getNameEStringParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__ToAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTransitionAccess().getToStateCrossReference_3_1_0()); }
		(
			{ before(grammarAccess.getTransitionAccess().getToStateEStringParserRuleCall_3_1_0_1()); }
			ruleEString
			{ after(grammarAccess.getTransitionAccess().getToStateEStringParserRuleCall_3_1_0_1()); }
		)
		{ after(grammarAccess.getTransitionAccess().getToStateCrossReference_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__FromAssignment_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTransitionAccess().getFromStateCrossReference_4_1_0()); }
		(
			{ before(grammarAccess.getTransitionAccess().getFromStateEStringParserRuleCall_4_1_0_1()); }
			ruleEString
			{ after(grammarAccess.getTransitionAccess().getFromStateEStringParserRuleCall_4_1_0_1()); }
		)
		{ after(grammarAccess.getTransitionAccess().getFromStateCrossReference_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
