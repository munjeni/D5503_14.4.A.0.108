.class public Lcom/sonymobile/china/photoeditor/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.sonymobile.china.photoeditor.filtershow.FilterShowActivity"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.china.photoeditor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/TestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/TestActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/TestActivity;->startApp()V

    return-void
.end method

.method private createButton(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v1, 0x1

    const/high16 v2, 0x41c80000

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 45
    new-instance v1, Lcom/sonymobile/china/photoeditor/TestActivity$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/TestActivity$1;-><init>(Lcom/sonymobile/china/photoeditor/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 54
    return-object v0
.end method

.method private startApp()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/sonymobile/china/photoeditor/TestActivity$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/TestActivity$2;-><init>(Lcom/sonymobile/china/photoeditor/TestActivity;)V

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/TestActivity$2;->start()V

    .line 69
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v1, "China Photo Editor"

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/TestActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    const-string v1, "Start"

    invoke-direct {p0, v1}, Lcom/sonymobile/china/photoeditor/TestActivity;->createButton(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/TestActivity;->setContentView(Landroid/view/View;)V

    .line 39
    return-void
.end method
