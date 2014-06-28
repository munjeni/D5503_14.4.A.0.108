.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/view/IInputMethodSession$Stub;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final DO_FINISH_INPUT:I = 0x3c

.field private static final DO_FINISH_SESSION:I = 0x6e

.field private static final DO_TOGGLE_SOFT_INPUT:I = 0x69

.field private static final DO_UPDATE_CURSOR:I = 0x5f

.field private static final DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final DO_UPDATE_SELECTION:I = 0x5a

.field private static final DO_VIEW_CLICKED:I = 0x73

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field mChannel:Landroid/view/InputChannel;

.field mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

.field mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodSession"    # Landroid/view/inputmethod/InputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;-><init>()V

    .line 66
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 68
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 69
    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 70
    if-eqz p3, :cond_0

    .line 71
    new-instance v0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;-><init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    .line 73
    :cond_0
    return-void
.end method

.method private doFinishSession()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 141
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {v0}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->dispose()V

    .line 143
    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 147
    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 192
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v1, :cond_0

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 87
    :sswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 88
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 94
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1

    .line 136
    const-string v0, "InputMethodWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :sswitch_1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    goto :goto_0

    .line 99
    :sswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0

    .line 102
    :sswitch_3
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0

    .line 106
    :sswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 107
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    .line 109
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 113
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 117
    :sswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 118
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 124
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 128
    :sswitch_8
    invoke-direct {p0}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->doFinishSession()V

    goto/16 :goto_0

    .line 132
    :sswitch_9
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 94
    :sswitch_data_1
    .sparse-switch
        0x3c -> :sswitch_1
        0x41 -> :sswitch_2
        0x43 -> :sswitch_3
        0x5a -> :sswitch_4
        0x5f -> :sswitch_5
        0x64 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6e -> :sswitch_8
        0x73 -> :sswitch_9
    .end sparse-switch
.end method

.method public finishInput()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 154
    return-void
.end method

.method public finishSession()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 203
    return-void
.end method

.method public getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    return-object v0
.end method

.method public toggleSoftInput(II)V
    .locals 3
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 196
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 198
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 166
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 9
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 171
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x5a

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIIIII(IIIIIII)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 174
    return-void
.end method

.method public viewClicked(Z)V
    .locals 4
    .param p1, "focusChanged"    # Z

    .prologue
    .line 178
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x73

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 180
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
