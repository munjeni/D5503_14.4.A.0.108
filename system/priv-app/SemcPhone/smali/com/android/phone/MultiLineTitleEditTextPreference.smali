.class public Lcom/android/phone/MultiLineTitleEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "MultiLineTitleEditTextPreference.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIsMsgSizeLimited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "MultiLineTitleEditTextPreference"

    sput-object v0, Lcom/android/phone/MultiLineTitleEditTextPreference;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0}, Lcom/android/phone/MultiLineTitleEditTextPreference;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0}, Lcom/android/phone/MultiLineTitleEditTextPreference;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0}, Lcom/android/phone/MultiLineTitleEditTextPreference;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MultiLineTitleEditTextPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MultiLineTitleEditTextPreference;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/phone/MultiLineTitleEditTextPreference;->mIsMsgSizeLimited:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/phone/MultiLineTitleEditTextPreference;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MultiLineTitleEditTextPreference;->mIsMsgSizeLimited:Z

    .line 105
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/MultiLineTitleEditTextPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is reject msg limited? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/MultiLineTitleEditTextPreference;->mIsMsgSizeLimited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 108
    .local v0, "editText":Landroid/widget/EditText;
    new-instance v1, Lcom/android/phone/MultiLineTitleEditTextPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MultiLineTitleEditTextPreference$1;-><init>(Lcom/android/phone/MultiLineTitleEditTextPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 91
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 100
    return-void
.end method
