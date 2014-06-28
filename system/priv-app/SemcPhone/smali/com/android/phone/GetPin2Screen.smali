.class public Lcom/android/phone/GetPin2Screen;
.super Landroid/app/Activity;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final mClicked:Landroid/view/View$OnClickListener;

.field private mOkButton:Landroid/widget/Button;

.field private mPin2Field:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    new-instance v0, Lcom/android/phone/GetPin2Screen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$1;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/GetPin2Screen;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/GetPin2Screen;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/GetPin2Screen;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->printMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/GetPin2Screen;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/GetPin2Screen;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->returnResult()V

    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private printMessage()V
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f0b035d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method

.method private returnResult()V
    .locals 6

    .prologue
    .line 75
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v2, "map":Landroid/os/Bundle;
    const-string v4, "pin2"

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 81
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, "action":Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 55
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 66
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mOkButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
