(* Copyright (C) 1995, Digital Equipment Corporation         *)
(* All rights reserved.                                      *)
(* See the file COPYRIGHT for a full description.            *)
(*                                                           *)
(* Last modified on Tue May 16 08:08:25 PDT 1995 by kalsow   *)
(*                                                           *)
(* Contributed by Harry George (hgeorge@eskimo.com), 5/16/95 *)

UNSAFE INTERFACE XmN;
(*Generated from Xm.h by ctom3 on 7/26/93*)

FROM Ctypes IMPORT char_star;

VAR (*READONLY*) accelerator:char_star;
VAR (*READONLY*) accelerators:char_star;
VAR (*READONLY*) acceleratorText:char_star;
VAR (*READONLY*) adjustLast:char_star;
VAR (*READONLY*) adjustMargin:char_star;
VAR (*READONLY*) alignment:char_star;
VAR (*READONLY*) ancestorSensitive:char_star;
VAR (*READONLY*) armCallback:char_star;
VAR (*READONLY*) background:char_star;
VAR (*READONLY*) backgroundPixmap:char_star;
VAR (*READONLY*) bitmap:char_star;
VAR (*READONLY*) borderColor:char_star;
VAR (*READONLY*) border:char_star;
VAR (*READONLY*) borderPixmap:char_star;
VAR (*READONLY*) borderWidth:char_star;
VAR (*READONLY*) buttonAccelerators:char_star;
VAR (*READONLY*) buttonAcceleratorText:char_star;
VAR (*READONLY*) buttonCount:char_star;
VAR (*READONLY*) buttonMnemoniccharSets:char_star;
VAR (*READONLY*) buttonMnemonics:char_star;
VAR (*READONLY*) buttons:char_star;
VAR (*READONLY*) buttonSet:char_star;
VAR (*READONLY*) buttonType:char_star;
VAR (*READONLY*) cascadePixmap:char_star;
VAR (*READONLY*) cascadingCallback:char_star;
VAR (*READONLY*) children:char_star;
VAR (*READONLY*) colormap:char_star;
VAR (*READONLY*) commandWindowLocation:char_star;
VAR (*READONLY*) defaultFontList:char_star;
VAR (*READONLY*) depth:char_star;
VAR (*READONLY*) destroyCallback:char_star;
VAR (*READONLY*) disarmCallback:char_star;
VAR (*READONLY*) editType:char_star;
VAR (*READONLY*) entryAlignment:char_star;
VAR (*READONLY*) entryBorder:char_star;
VAR (*READONLY*) entryClass:char_star;
VAR (*READONLY*) entryCallback:char_star;
VAR (*READONLY*) exposeCallback:char_star;
VAR (*READONLY*) file:char_star;
VAR (*READONLY*) fillOnSelect:char_star;
VAR (*READONLY*) filterLabelString:char_star;
VAR (*READONLY*) font:char_star;
VAR (*READONLY*) fontList:char_star;
VAR (*READONLY*) forceBars:char_star;

(*why redefined???
VAR (*READONLY*) foreground:char_star;
*)

VAR (*READONLY*) function:char_star;
VAR (*READONLY*) height:char_star;
VAR (*READONLY*) highlight:char_star;
VAR (*READONLY*) index:char_star;
VAR (*READONLY*) indicatorOn:char_star;
VAR (*READONLY*) indicatorSize:char_star;
VAR (*READONLY*) indicatorType:char_star;
VAR (*READONLY*) initialResourcesPersistent:char_star;
VAR (*READONLY*) innerHeight:char_star;
VAR (*READONLY*) innerWidth:char_star;
VAR (*READONLY*) innerWindow:char_star;
VAR (*READONLY*) insertPosition:char_star;
VAR (*READONLY*) internalHeight:char_star;
VAR (*READONLY*) internalWidth:char_star;
VAR (*READONLY*) isAligned:char_star;
VAR (*READONLY*) isHomogeneous:char_star;
VAR (*READONLY*) jumpProc:char_star;
VAR (*READONLY*) justify:char_star;
VAR (*READONLY*) labelInsensitivePixmap:char_star;
VAR (*READONLY*) labelPixmap:char_star;
VAR (*READONLY*) labelString:char_star;
VAR (*READONLY*) labelType:char_star;
VAR (*READONLY*) length:char_star;
VAR (*READONLY*) listUpdated:char_star;
VAR (*READONLY*) lowerRight:char_star;
VAR (*READONLY*) mapCallback:char_star;
VAR (*READONLY*) mappedWhenManaged:char_star;
VAR (*READONLY*) mappingDelay:char_star;
VAR (*READONLY*) marginHeight:char_star;
VAR (*READONLY*) marginTop:char_star;
VAR (*READONLY*) marginBottom:char_star;
VAR (*READONLY*) marginWidth:char_star;
VAR (*READONLY*) marginRight:char_star;
VAR (*READONLY*) marginLeft:char_star;
VAR (*READONLY*) menuAccelerator:char_star;
VAR (*READONLY*) menuCursor:char_star;
VAR (*READONLY*) menuEntry:char_star;
VAR (*READONLY*) menuHelpWidget:char_star;
VAR (*READONLY*) menuHistory:char_star;
VAR (*READONLY*) menuPost:char_star;
VAR (*READONLY*) mnemonic:char_star;
VAR (*READONLY*) mnemoniccharSet:char_star;
VAR (*READONLY*) name:char_star;
VAR (*READONLY*) navigationType:char_star;
VAR (*READONLY*) notify:char_star;
VAR (*READONLY*) numChildren:char_star;
VAR (*READONLY*) numColumns:char_star;
VAR (*READONLY*) optionLabel:char_star;
VAR (*READONLY*) optionMnemonic:char_star;
VAR (*READONLY*) orientation:char_star;
VAR (*READONLY*) packing:char_star;
VAR (*READONLY*) parameter:char_star;
VAR (*READONLY*) popdownCallback:char_star;
VAR (*READONLY*) popupCallback:char_star;
VAR (*READONLY*) popupEnabled:char_star;
VAR (*READONLY*) postFromButton:char_star;
VAR (*READONLY*) postFromCount:char_star;
VAR (*READONLY*) postFromList:char_star;
VAR (*READONLY*) radioAlwaysOne:char_star;
VAR (*READONLY*) radioBehavior:char_star;
VAR (*READONLY*) recomputeSize:char_star;
VAR (*READONLY*) resize:char_star;
VAR (*READONLY*) resizeCallback:char_star;
VAR (*READONLY*) reverseVideo:char_star;
VAR (*READONLY*) rowColumnType:char_star;
VAR (*READONLY*) scaleMultiple:char_star;
VAR (*READONLY*) screen:char_star;
VAR (*READONLY*) scrollProc:char_star;
VAR (*READONLY*) scrollDCursor:char_star;
VAR (*READONLY*) scrollHCursor:char_star;
VAR (*READONLY*) scrollLCursor:char_star;
VAR (*READONLY*) scrollRCursor:char_star;
VAR (*READONLY*) scrollUCursor:char_star;
VAR (*READONLY*) scrollVCursor:char_star;
VAR (*READONLY*) selectColor:char_star;
VAR (*READONLY*) selection:char_star;
VAR (*READONLY*) selectionArray:char_star;
VAR (*READONLY*) selectInsensitivePixmap:char_star;
VAR (*READONLY*) selectPixmap:char_star;
VAR (*READONLY*) sensitive:char_star;
VAR (*READONLY*) set:char_star;
VAR (*READONLY*) shadow:char_star;
VAR (*READONLY*) shown:char_star;
VAR (*READONLY*) simpleCallback:char_star;
VAR (*READONLY*) space:char_star;
VAR (*READONLY*) spacing:char_star;
VAR (*READONLY*) string:char_star;
VAR (*READONLY*) stringDirection:char_star;
VAR (*READONLY*) subMenuId:char_star;
VAR (*READONLY*) textOptions:char_star;
VAR (*READONLY*) textSink:char_star;
VAR (*READONLY*) textSource:char_star;
VAR (*READONLY*) thickness:char_star;
VAR (*READONLY*) thumb:char_star;
VAR (*READONLY*) thumbProc:char_star;
VAR (*READONLY*) top:char_star;
VAR (*READONLY*) translations:char_star;
VAR (*READONLY*) traversalType:char_star;
VAR (*READONLY*) troughColor:char_star;
VAR (*READONLY*) unmapCallback:char_star;
VAR (*READONLY*) unselectPixmap:char_star;
VAR (*READONLY*) update:char_star;
VAR (*READONLY*) useBottom:char_star;
VAR (*READONLY*) useRight:char_star;
VAR (*READONLY*) value:char_star;
VAR (*READONLY*) visibleWhenOff:char_star;
VAR (*READONLY*) whichButton:char_star;
VAR (*READONLY*) width:char_star;
VAR (*READONLY*) window:char_star;
VAR (*READONLY*) x:char_star;
VAR (*READONLY*) y:char_star;
VAR (*READONLY*) iconName:char_star;
VAR (*READONLY*) iconPixmap:char_star;
VAR (*READONLY*) iconWindow:char_star;
VAR (*READONLY*) iconMask:char_star;
VAR (*READONLY*) windowGroup:char_star;
VAR (*READONLY*) saveUnder:char_star;
VAR (*READONLY*) transient:char_star;
VAR (*READONLY*) overrideRedirect:char_star;
VAR (*READONLY*) allowShellResize:char_star;
VAR (*READONLY*) createPopupChildProc:char_star;
VAR (*READONLY*) title:char_star;
VAR (*READONLY*) argc:char_star;
VAR (*READONLY*) argv:char_star;
VAR (*READONLY*) iconX:char_star;
VAR (*READONLY*) iconY:char_star;
VAR (*READONLY*) input:char_star;
VAR (*READONLY*) iconic:char_star;
VAR (*READONLY*) initialState:char_star;
VAR (*READONLY*) geometry:char_star;
VAR (*READONLY*) minWidth:char_star;
VAR (*READONLY*) minHeight:char_star;
VAR (*READONLY*) maxWidth:char_star;
VAR (*READONLY*) maxHeight:char_star;
VAR (*READONLY*) widthInc:char_star;
VAR (*READONLY*) heightInc:char_star;
VAR (*READONLY*) minAspectY:char_star;
VAR (*READONLY*) maxAspectY:char_star;
VAR (*READONLY*) minAspectX:char_star;
VAR (*READONLY*) maxAspectX:char_star;
VAR (*READONLY*) wmTimeout:char_star;
VAR (*READONLY*) waitForWm:char_star;


VAR (*READONLY*) visual : char_star;
VAR (*READONLY*) iconNameEncoding : char_star;
VAR (*READONLY*) transientFor : char_star;
VAR (*READONLY*) baseHeight : char_star;
VAR (*READONLY*) baseWidth : char_star;
VAR (*READONLY*) titleEncoding : char_star;
VAR (*READONLY*) winGravity : char_star;


VAR (*READONLY*) foreground:char_star;
VAR (*READONLY*) traversalOn:char_star;
VAR (*READONLY*) highlightOnEnter:char_star;
VAR (*READONLY*) sizePolicy:char_star;
VAR (*READONLY*) highlightThickness:char_star;
VAR (*READONLY*) highlightColor:char_star;
VAR (*READONLY*) highlightPixmap:char_star;
VAR (*READONLY*) shadowThickness:char_star;
VAR (*READONLY*) topShadowColor:char_star;
VAR (*READONLY*) topShadowPixmap:char_star;
VAR (*READONLY*) bottomShadowColor:char_star;
VAR (*READONLY*) bottomShadowPixmap:char_star;
VAR (*READONLY*) unitType:char_star;
VAR (*READONLY*) helpCallback:char_star;
VAR (*READONLY*) userData:char_star;
VAR (*READONLY*) childPosition:char_star;
VAR (*READONLY*) horizontalSpacing:char_star;
VAR (*READONLY*) verticalSpacing:char_star;
VAR (*READONLY*) fractionBase:char_star;
VAR (*READONLY*) rubberPositioning:char_star;
VAR (*READONLY*) resizePolicy:char_star;
VAR (*READONLY*) topAttachment:char_star;
VAR (*READONLY*) bottomAttachment:char_star;
VAR (*READONLY*) leftAttachment:char_star;
VAR (*READONLY*) rightAttachment:char_star;
VAR (*READONLY*) topWidget:char_star;
VAR (*READONLY*) bottomWidget:char_star;
VAR (*READONLY*) leftWidget:char_star;
VAR (*READONLY*) rightWidget:char_star;
VAR (*READONLY*) topPosition:char_star;
VAR (*READONLY*) bottomPosition:char_star;
VAR (*READONLY*) leftPosition:char_star;
VAR (*READONLY*) rightPosition:char_star;
VAR (*READONLY*) topOffset:char_star;
VAR (*READONLY*) bottomOffset:char_star;
VAR (*READONLY*) leftOffset:char_star;
VAR (*READONLY*) rightOffset:char_star;
VAR (*READONLY*) resizable:char_star;
VAR (*READONLY*) fillOnArm:char_star;
VAR (*READONLY*) armColor:char_star;
VAR (*READONLY*) armPixmap:char_star;
VAR (*READONLY*) showAsDefault:char_star;
VAR (*READONLY*) defaultButtonShadowThickness:char_star;
VAR (*READONLY*) multiClick:char_star;
VAR (*READONLY*) pushButtonEnabled:char_star;
VAR (*READONLY*) shadowType:char_star;
VAR (*READONLY*) arrowDirection:char_star;
VAR (*READONLY*) activateCallback:char_star;
(*redefined???
VAR (*READONLY*) helpCallback:char_star;
*)
VAR (*READONLY*) margin:char_star;
VAR (*READONLY*) separatorType:char_star;
VAR (*READONLY*) minimum:char_star;
VAR (*READONLY*) maximum:char_star;
VAR (*READONLY*) sliderSize:char_star;
VAR (*READONLY*) showArrows:char_star;
VAR (*READONLY*) processingDirection:char_star;
VAR (*READONLY*) increment:char_star;
VAR (*READONLY*) pageIncrement:char_star;
VAR (*READONLY*) initialDelay:char_star;
VAR (*READONLY*) repeatDelay:char_star;
VAR (*READONLY*) valueChangedCallback:char_star;
VAR (*READONLY*) incrementCallback:char_star;
VAR (*READONLY*) decrementCallback:char_star;
VAR (*READONLY*) pageIncrementCallback:char_star;
VAR (*READONLY*) pageDecrementCallback:char_star;
VAR (*READONLY*) toTopCallback:char_star;
VAR (*READONLY*) toBottomCallback:char_star;
VAR (*READONLY*) dragCallback:char_star;
VAR (*READONLY*) listSpacing:char_star;
VAR (*READONLY*) listMarginWidth:char_star;
VAR (*READONLY*) listMarginHeight:char_star;
VAR (*READONLY*) items:char_star;
VAR (*READONLY*) itemCount:char_star;
VAR (*READONLY*) selectedItems:char_star;
VAR (*READONLY*) selectedItemCount:char_star;
VAR (*READONLY*) visibleItemCount:char_star;
VAR (*READONLY*) selectionPolicy:char_star;
VAR (*READONLY*) listSizePolicy:char_star;
VAR (*READONLY*) doubleClickinterval:char_star;
VAR (*READONLY*) singleSelectionCallback:char_star;
VAR (*READONLY*) multipleSelectionCallback:char_star;
VAR (*READONLY*) extendedSelectionCallback:char_star;
VAR (*READONLY*) browseSelectionCallback:char_star;
VAR (*READONLY*) defaultActionCallback:char_star;
VAR (*READONLY*) automaticSelection:char_star;
VAR (*READONLY*) topItemPosition:char_star;
VAR (*READONLY*) horizontalScrollBar:char_star;
VAR (*READONLY*) verticalScrollBar:char_star;
VAR (*READONLY*) workWindow:char_star;
VAR (*READONLY*) clipWindow:char_star;
VAR (*READONLY*) scrollingPolicy:char_star;
VAR (*READONLY*) visualPolicy:char_star;
VAR (*READONLY*) scrollBarDisplayPolicy:char_star;
VAR (*READONLY*) scrollBarPlacement:char_star;
VAR (*READONLY*) updateSliderSize:char_star;
VAR (*READONLY*) scrolledWindowMarginHeight:char_star;
VAR (*READONLY*) scrolledWindowMarginWidth:char_star;
VAR (*READONLY*) commandWindow:char_star;
VAR (*READONLY*) menuBar:char_star;
VAR (*READONLY*) messageWindow:char_star;
VAR (*READONLY*) mainWindowMarginHeight:char_star;
VAR (*READONLY*) mainWindowMarginWidth:char_star;
VAR (*READONLY*) showSeparator:char_star;
VAR (*READONLY*) source:char_star;
VAR (*READONLY*) outputCreate:char_star;
VAR (*READONLY*) inputCreate:char_star;
VAR (*READONLY*) autoShowCursorPosition:char_star;
VAR (*READONLY*) cursorPosition:char_star;
VAR (*READONLY*) editable:char_star;
VAR (*READONLY*) maxLength:char_star;
VAR (*READONLY*) focusCallback:char_star;
VAR (*READONLY*) losingFocusCallback:char_star;
VAR (*READONLY*) modifyVerifyCallback:char_star;
VAR (*READONLY*) motionVerifyCallback:char_star;
VAR (*READONLY*) gainPrimaryCallback:char_star;
VAR (*READONLY*) losePrimaryCallback:char_star;
VAR (*READONLY*) verifyBell:char_star;
VAR (*READONLY*) wordWrap:char_star;
VAR (*READONLY*) blinkRate:char_star;
VAR (*READONLY*) resizeWidth:char_star;
VAR (*READONLY*) resizeHeight:char_star;
VAR (*READONLY*) scrollHorizontal:char_star;
VAR (*READONLY*) scrollVertical:char_star;
VAR (*READONLY*) scrollLeftSide:char_star;
VAR (*READONLY*) scrollTopSide:char_star;
VAR (*READONLY*) cursorPositionVisible:char_star;
VAR (*READONLY*) toPositionCallback:char_star;
VAR (*READONLY*) columns:char_star;
VAR (*READONLY*) rows:char_star;
VAR (*READONLY*) selectThreshold:char_star;
VAR (*READONLY*) selectionArrayCount:char_star;
VAR (*READONLY*) pendingDelete:char_star;
VAR (*READONLY*) editMode:char_star;
VAR (*READONLY*) topcharacter:char_star;
VAR (*READONLY*) refigureMode:char_star;
VAR (*READONLY*) separatorOn:char_star;
VAR (*READONLY*) sashIndent:char_star;
VAR (*READONLY*) sashWidth:char_star;
VAR (*READONLY*) sashHeight:char_star;
VAR (*READONLY*) sashShadowThickness:char_star;
VAR (*READONLY*) allowResize:char_star;
VAR (*READONLY*) skipAdjust:char_star;
VAR (*READONLY*) paneMinimum:char_star;
VAR (*READONLY*) paneMaximum:char_star;
VAR (*READONLY*) inputCallback:char_star;
VAR (*READONLY*) okCallback:char_star;
VAR (*READONLY*) cancelCallback:char_star;
VAR (*READONLY*) applyCallback:char_star;
VAR (*READONLY*) noMatchCallback:char_star;
VAR (*READONLY*) commandEnteredCallback:char_star;
VAR (*READONLY*) commandChangedCallback:char_star;
VAR (*READONLY*) okLabelString:char_star;
VAR (*READONLY*) cancelLabelString:char_star;
VAR (*READONLY*) helpLabelString:char_star;
VAR (*READONLY*) applyLabelString:char_star;
VAR (*READONLY*) selectionLabelString:char_star;
VAR (*READONLY*) listLabelString:char_star;
VAR (*READONLY*) promptString:char_star;
VAR (*READONLY*) defaultButton:char_star;
VAR (*READONLY*) cancelButton:char_star;
VAR (*READONLY*) buttonFontList:char_star;
VAR (*READONLY*) labelFontList:char_star;
VAR (*READONLY*) textFontList:char_star;
VAR (*READONLY*) textTranslations:char_star;
VAR (*READONLY*) allowOverlap:char_star;
VAR (*READONLY*) defaultPosition:char_star;
VAR (*READONLY*) autoUnmanage:char_star;

(* ???redefined???
VAR (*READONLY*) allowShellResize:char_star;
??? *)

VAR (*READONLY*) dialogTitle:char_star;
VAR (*READONLY*) noResize:char_star;
VAR (*READONLY*) dialogStyle:char_star;
VAR (*READONLY*) mustMatch:char_star;
VAR (*READONLY*) noMatchString:char_star;
VAR (*READONLY*) directory:char_star;
VAR (*READONLY*) pattern:char_star;
VAR (*READONLY*) dirSpec:char_star;
VAR (*READONLY*) dirMask:char_star;
VAR (*READONLY*) fileTypeMask:char_star;
VAR (*READONLY*) directoryValid:char_star;
VAR (*READONLY*) dirListItems:char_star;
VAR (*READONLY*) dirListItemCount:char_star;
VAR (*READONLY*) dirListLabelString:char_star;
VAR (*READONLY*) fileListItems:char_star;
VAR (*READONLY*) fileListItemCount:char_star;
VAR (*READONLY*) fileListLabelString:char_star;
VAR (*READONLY*) qualifySearchDataProc:char_star;
VAR (*READONLY*) dirSearchProc:char_star;
VAR (*READONLY*) fileSearchProc:char_star;
VAR (*READONLY*) listItems:char_star;
VAR (*READONLY*) listItemCount:char_star;
VAR (*READONLY*) listVisibleItemCount:char_star;
VAR (*READONLY*) historyItems:char_star;
VAR (*READONLY*) historyItemCount:char_star;
VAR (*READONLY*) historyVisibleItemCount:char_star;
VAR (*READONLY*) historyMaxItems:char_star;
VAR (*READONLY*) textAccelerators:char_star;
VAR (*READONLY*) textValue:char_star;
VAR (*READONLY*) textString:char_star;
VAR (*READONLY*) textColumns:char_star;
VAR (*READONLY*) command:char_star;
VAR (*READONLY*) defaultButtonType:char_star;
VAR (*READONLY*) minimizeButtons:char_star;
VAR (*READONLY*) messageString:char_star;
VAR (*READONLY*) messageAlignment:char_star;
VAR (*READONLY*) symbolPixmap:char_star;
VAR (*READONLY*) dialogType:char_star;
VAR (*READONLY*) scaleWidth:char_star;
VAR (*READONLY*) scaleHeight:char_star;
VAR (*READONLY*) decimalPoints:char_star;
VAR (*READONLY*) showValue:char_star;
VAR (*READONLY*) titleString:char_star;

PROCEDURE Init();
(* Initializes the variables listed above; must be called at least once. *)

END XmN.
