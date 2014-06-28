.class final Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodSession$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImeInputEventReceiver"
.end annotation


# instance fields
.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 209
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    .line 210
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 207
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    .line 211
    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .prologue
    .line 238
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 239
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 240
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 241
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 242
    invoke-virtual {p0, v0, p2}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 244
    .end local v0    # "event":Landroid/view/InputEvent;
    :cond_0
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 215
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v3, :cond_0

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 222
    .local v2, "seq":I
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    instance-of v3, p1, Landroid/view/KeyEvent;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 224
    check-cast v0, Landroid/view/KeyEvent;

    .line 225
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v3, v2, v0, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_0

    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v1, p1

    .line 227
    check-cast v1, Landroid/view/MotionEvent;

    .line 228
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v3, v2, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v3, v2, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_0
.end method
