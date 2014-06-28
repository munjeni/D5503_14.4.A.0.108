.class public Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;,
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    }
.end annotation


# static fields
.field public static final ALLOW_FOCUS_CHANGE:Z = false

.field public static final COMMA:C = ','

.field public static final ENTER:C = '\n'

.field public static final RECIPIENTS_CHANGE_UPDATE_DELAY:I = 0x15e

.field public static final RECIPIENT_NAME_PADDING:Ljava/lang/String; = "  ,"

.field public static final SEMICOLON:C = ';'

.field private static final SPANOBJECT:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "RecipientsEditor"

.field public static final TOFIELD_ROTATE_DELAY:I = 0x64


# instance fields
.field private mActionOrientationChanged:Ljava/lang/Runnable;

.field private mAffectedAnnotation:[Landroid/text/Annotation;

.field private mAffectedImage:[Landroid/text/style/ImageSpan;

.field private mCurrentOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsImeActionNext:Z

.field private mIsInputLastSeparator:Z

.field private mIsShowRecentList:Z

.field private mLastSeparator:C

.field private mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

.field private mMaxRecipientCount:I

.field private mParticipantChanged:Z

.field private mSelectionEnd:I

.field private final mShowSoftKeyBoardRunnable:Ljava/lang/Runnable;

.field private mSpanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBeforeLength:I

.field private final mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

.field private mWatcher:Landroid/text/TextWatcher;

.field private mWatcherRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->SPANOBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 431
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    .line 107
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsInputLastSeparator:Z

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    .line 115
    iput v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    .line 121
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    .line 123
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    .line 125
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsShowRecentList:Z

    .line 248
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    .line 250
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I

    .line 376
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mActionOrientationChanged:Ljava/lang/Runnable;

    .line 423
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mShowSoftKeyBoardRunnable:Ljava/lang/Runnable;

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 436
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, p1, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 439
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 463
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCurrentOrientation:I

    .line 477
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 478
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->SPANOBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->couldNotAddMoreRecipientsToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->editorRecipientAdded(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->changeBubbleLandscape(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/conversations/ui/RecipientsEditor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Landroid/text/style/ImageSpan;)[Landroid/text/style/ImageSpan;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # [Landroid/text/style/ImageSpan;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mShowSoftKeyBoardRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participiantToEditorUI(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # C

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/text/Spanned;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/Spanned;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/text/Spanned;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNameAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Landroid/text/Annotation;)[Landroid/text/Annotation;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # [Landroid/text/Annotation;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedAnnotation:[Landroid/text/Annotation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTextBeforeLength:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/conversations/ui/RecipientsEditor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTextBeforeLength:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsInputLastSeparator:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsInputLastSeparator:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)C
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-char v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    return v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)C
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # C

    .prologue
    .line 64
    iput-char p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C

    return p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->deleteCommaAndImageSpan(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    return-object v0
.end method

.method private addTextListener()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    .line 675
    :cond_0
    return-void
.end method

.method private changeBubbleLandscape(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 511
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedAnnotation:[Landroid/text/Annotation;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedAnnotation:[Landroid/text/Annotation;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 512
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedAnnotation:[Landroid/text/Annotation;

    .local v1, "arr$":[Landroid/text/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .local v0, "a":Landroid/text/Annotation;
    move-object v4, p1

    .line 513
    check-cast v4, Landroid/text/Editable;

    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "a":Landroid/text/Annotation;
    .end local v1    # "arr$":[Landroid/text/Annotation;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 518
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    .local v1, "arr$":[Landroid/text/style/ImageSpan;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .local v0, "a":Landroid/text/style/ImageSpan;
    move-object v4, p1

    .line 519
    check-cast v4, Landroid/text/Editable;

    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 522
    .end local v0    # "a":Landroid/text/style/ImageSpan;
    .end local v1    # "arr$":[Landroid/text/style/ImageSpan;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-void
.end method

.method private convertTextToBubble()V
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 923
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 924
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 925
    .local v2, "text":Landroid/text/Editable;
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 926
    .local v1, "len":I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 927
    .local v0, "commaPos":I
    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_1

    .line 928
    :cond_0
    invoke-interface {v2, v4}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 931
    .end local v0    # "commaPos":I
    .end local v1    # "len":I
    .end local v2    # "text":Landroid/text/Editable;
    :cond_1
    return-void
.end method

.method private couldNotAddMoreRecipientsToast()V
    .locals 4

    .prologue
    .line 1011
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$7;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 1018
    .local v0, "couldNotAddToast":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1020
    return-void
.end method

.method private deleteCommaAndImageSpan(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 495
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    array-length v2, v2

    if-lez v2, :cond_1

    move-object v2, p1

    .line 496
    check-cast v2, Landroid/text/Spanned;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    aget-object v3, v3, v5

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .local v1, "start":I
    move-object v2, p1

    .line 497
    check-cast v2, Landroid/text/Spanned;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    aget-object v3, v3, v5

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 498
    .local v0, "end":I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    .line 500
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    move-object v2, p1

    .line 501
    check-cast v2, Landroid/text/Editable;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 506
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->deleteUselsessComma(Ljava/lang/CharSequence;)V

    .line 508
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void

    .restart local v0    # "end":I
    .restart local v1    # "start":I
    :cond_2
    move-object v2, p1

    .line 503
    check-cast v2, Landroid/text/Editable;

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method private deleteUselsessComma(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v1

    .line 486
    .local v1, "select":I
    if-ltz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 487
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 488
    .local v0, "a":C
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_0

    .line 489
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "s":Ljava/lang/CharSequence;
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 492
    .end local v0    # "a":C
    :cond_0
    return-void
.end method

.method private editorRecipientAdded(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V
    .locals 3
    .param p1, "recipient"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .prologue
    .line 655
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 656
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 657
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 658
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 659
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 661
    .end local v0    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_0
    return-void
.end method

.method private static getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ann"    # [Landroid/text/Annotation;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1077
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1078
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1083
    :goto_1
    return-object v1

    .line 1077
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private static getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 1061
    const-class v2, Landroid/text/Annotation;

    invoke-interface {p1, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 1062
    .local v0, "a":[Landroid/text/Annotation;
    invoke-static {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 1066
    :cond_0
    return-object v1
.end method

.method private static getNameAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "sp"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1033
    const-string v0, "name"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "sp"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1029
    const-string v0, "number"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 3
    .param p0, "sp"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1050
    const-class v2, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 1051
    .local v0, "a":[Landroid/text/Annotation;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 1052
    aget-object v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1054
    :cond_0
    return v1
.end method

.method private isSeparator(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 934
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 852
    if-nez p2, :cond_1

    .line 853
    const-string p2, ""

    .line 867
    .end local p2    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 856
    .restart local p2    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 860
    :cond_2
    if-nez p1, :cond_3

    .line 861
    const-string p1, ""

    .line 866
    :goto_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientBubble;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/RecipientBubble;-><init>(Landroid/widget/TextView;)V

    .line 867
    .local v0, "spanString":Lcom/sonyericsson/conversations/ui/RecipientBubble;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->buildRecipientBubble(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 863
    .end local v0    # "spanString":Lcom/sonyericsson/conversations/ui/RecipientBubble;
    :cond_3
    const-string v1, ", "

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private participiantToEditorUI(Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "sb"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v11, 0x2c

    const/4 v10, 0x0

    .line 939
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 942
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->convertTextToBubble()V

    .line 943
    const/4 v6, 0x0

    .line 944
    .local v6, "selection":I
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 945
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 947
    .local v5, "sbb":Landroid/text/SpannableStringBuilder;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 948
    .local v0, "SpanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    iget-object v8, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    iget-object v9, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 949
    invoke-virtual {v5, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 952
    .end local v0    # "SpanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_0
    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 953
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 955
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 957
    invoke-virtual {v5, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 958
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 960
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    .line 992
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "sbb":Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-gt v6, v8, :cond_7

    const/16 v8, 0x800

    if-gt v6, v8, :cond_7

    .line 994
    invoke-virtual {p0, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 999
    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    .line 1001
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 1003
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange()V

    .line 1005
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v8, :cond_2

    .line 1006
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8, p0, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1008
    :cond_2
    return-void

    .line 962
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 964
    .local v7, "text":Landroid/text/Editable;
    if-eqz v7, :cond_1

    .line 965
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 966
    .local v1, "end":I
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v3

    .line 968
    .local v3, "length":I
    if-lt v1, v3, :cond_6

    .line 969
    add-int/lit8 v4, v3, -0x1

    .line 971
    .local v4, "pos":I
    if-lez v3, :cond_5

    .line 972
    :goto_3
    if-ltz v4, :cond_4

    invoke-interface {v7, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_4

    .line 974
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 976
    :cond_4
    if-ltz v4, :cond_5

    invoke-interface {v7, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z

    move-result v8

    if-nez v8, :cond_5

    .line 977
    invoke-interface {v7, v11}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 980
    :cond_5
    invoke-interface {v7, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 987
    .end local v4    # "pos":I
    :goto_4
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int v6, v1, v8

    goto :goto_1

    .line 983
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 984
    invoke-interface {v7, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4

    .line 996
    .end local v1    # "end":I
    .end local v3    # "length":I
    .end local v7    # "text":Landroid/text/Editable;
    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2
.end method

.method private removeTextListener()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mWatcherRegistered:Z

    .line 668
    :cond_0
    return-void
.end method

.method private updateText(Z)V
    .locals 14
    .param p1, "focus"    # Z

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 587
    if-eqz p1, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-eqz v9, :cond_3

    .line 589
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 590
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 592
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 594
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 595
    .local v6, "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    iget-object v9, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    iget-object v10, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 596
    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 598
    .end local v6    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 600
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    .line 602
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 647
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 648
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange()V

    .line 651
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 652
    return-void

    .line 604
    :cond_3
    if-nez p1, :cond_1

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-nez v9, :cond_1

    .line 606
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 607
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNameAndNumbers()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    .line 609
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 611
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 612
    .local v5, "size":I
    new-instance v7, Lcom/sonyericsson/conversations/ui/RecipientDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;-><init>(Landroid/text/TextPaint;F)V

    .line 613
    .local v7, "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    const/4 v0, 0x0

    .line 615
    .local v0, "currentTextWidth":F
    const/4 v9, 0x1

    if-le v5, v9, :cond_4

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070135

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getTextWidth(Ljava/lang/String;)I

    move-result v9

    int-to-float v3, v9

    .line 620
    .local v3, "recipientsMoreWidth":F
    add-float/2addr v0, v3

    .line 623
    .end local v3    # "recipientsMoreWidth":F
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v2, v9

    .line 624
    .local v2, "lineWidth":F
    const/4 v8, 0x0

    .line 625
    .local v8, "visibleRecipient":I
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 627
    .restart local v4    # "sb":Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 628
    .restart local v6    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  ,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getTextWidth(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v0, v9

    .line 631
    cmpg-float v9, v0, v2

    if-ltz v9, :cond_6

    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    .line 633
    :cond_6
    iget-object v9, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    iget-object v10, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 634
    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 635
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 638
    .end local v6    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_7
    const/4 v9, 0x1

    if-le v5, v9, :cond_8

    cmpl-float v9, v0, v2

    if-lez v9, :cond_8

    .line 639
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070135

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sub-int v13, v5, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 643
    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public addParticipiantToEditorAsync(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 878
    .local v6, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v0, 0x0

    .line 881
    .local v0, "addedParticipant":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 886
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAllRecipientCount()I

    move-result v8

    add-int/2addr v8, v0

    iget v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    if-lt v8, v9, :cond_2

    .line 887
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->couldNotAddMoreRecipientsToast()V

    .line 908
    .end local v1    # "c":Ljava/lang/String;
    :cond_1
    move-object v7, v6

    .line 909
    .local v7, "sbfinal":Landroid/text/SpannableStringBuilder;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;

    invoke-direct {v9, p0, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 920
    return-void

    .line 891
    .end local v7    # "sbfinal":Landroid/text/SpannableStringBuilder;
    .restart local v1    # "c":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v4, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 893
    .local v4, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 894
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    add-int/lit8 v0, v0, 0x1

    .line 897
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 899
    move-object v3, v1

    .line 901
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 902
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public clearSpanList()V
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1316
    :cond_0
    return-void
.end method

.method public containsEmail()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 831
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    const/16 v6, 0x40

    invoke-static {v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v4

    .line 835
    :cond_1
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v3

    .line 836
    .local v3, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers(Z)Ljava/util/List;

    move-result-object v2

    .line 837
    .local v2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 838
    .local v1, "number":Ljava/lang/String;
    invoke-interface {v3, v1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 839
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 719
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    instance-of v6, v6, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    if-eqz v6, :cond_1

    .line 720
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsShowRecentList:Z

    .line 745
    :cond_0
    :goto_0
    return v4

    .line 732
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 733
    .local v2, "text":Landroid/text/Editable;
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 734
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v0

    .line 735
    .local v0, "end":I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 736
    .local v3, "tokenEnd":I
    if-ne v3, v8, :cond_2

    .line 737
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 741
    :cond_2
    if-lt v1, v4, :cond_3

    if-eq v3, v8, :cond_4

    add-int/lit8 v6, v1, -0x1

    if-ne v6, v3, :cond_4

    :cond_3
    move v4, v5

    .line 742
    goto :goto_0

    .line 745
    :cond_4
    if-eq v0, v1, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public getAllRecipientCount()I
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInvalidRecipients()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v2, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 800
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 801
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 805
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getNameAndNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNameAndNumbers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 2

    .prologue
    .line 714
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getValidRecipients()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v2, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 818
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public hasValidRecipient()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 782
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTokenizer:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 783
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    const/4 v2, 0x1

    .line 787
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public isDeleteBubble()Z
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1381
    const/4 v0, 0x1

    .line 1383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditorEmpty()Z
    .locals 1

    .prologue
    .line 1358
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEndWithTerminator()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1362
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, "contacts":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return v2

    .line 1367
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1368
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1369
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isRecipientDirty()Z
    .locals 1

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 571
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsShowRecentList:Z

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mActionOrientationChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mActionOrientationChanged:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mCurrentOrientation:I

    .line 582
    :cond_1
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1088
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1103
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1101
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1088
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onEditorAction(I)V
    .locals 3
    .param p1, "actionCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 683
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    .line 684
    .local v0, "isFullScreenMode":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 685
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z

    .line 686
    invoke-super {p0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 687
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V

    .line 688
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    goto :goto_0
.end method

.method public onFilterComplete(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1337
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    if-eqz v1, :cond_1

    .line 1338
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsShowRecentList:Z

    if-eqz v1, :cond_0

    .line 1339
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1347
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    .line 1342
    .local v0, "adapter":Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1345
    .end local v0    # "adapter":Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 545
    instance-of v1, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 546
    check-cast v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;

    .line 547
    .local v0, "savedState":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 553
    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    .line 554
    iget-boolean v1, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    if-eqz v1, :cond_0

    .line 555
    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 565
    .end local v0    # "savedState":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 526
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 527
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 528
    .local v0, "savedState":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 529
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNameAndNumbers()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    .line 540
    :goto_0
    return-object v0

    .line 532
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    .line 533
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;

    iput-object v2, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    goto :goto_0
.end method

.method public performFiltering()V
    .locals 2

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1333
    .local v0, "fakeKeyword":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 1334
    return-void
.end method

.method public registerEditorListener(Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    .line 750
    return-void
.end method

.method public removeAllRecipients()V
    .locals 1

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V

    .line 1324
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->clearSpanList()V

    .line 1325
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V

    .line 1327
    return-void
.end method

.method public reportRecipientsChange()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isEndWithTerminator()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onRecipientsChanged(Z)V

    .line 704
    :cond_1
    return-void
.end method

.method public setMaxRecipientCount(I)V
    .locals 0
    .param p1, "maxRecipientCount"    # I

    .prologue
    .line 678
    iput p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I

    .line 679
    return-void
.end method

.method public setRecipientDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 1354
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z

    .line 1355
    return-void
.end method

.method public setShowRecentList(Z)V
    .locals 0
    .param p1, "isShowList"    # Z

    .prologue
    .line 1376
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsShowRecentList:Z

    .line 1377
    return-void
.end method

.method public unRegisterEditorListener()V
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    .line 754
    return-void
.end method
