.class public Lcom/android/phone/SomcDtmfDialPad;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# static fields
.field private static final sDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static sKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAddToContact:Landroid/widget/ImageButton;

.field private mBackspaceCount:I

.field private final mBackspaceHandler:Landroid/os/Handler;

.field private mBackspacePressed:Z

.field private mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

.field private final mDialpad:Landroid/widget/LinearLayout;

.field private mDialpadDigits:Lcom/android/phone/SomcEditText;

.field private final mDtmfDelButton:Landroid/widget/ImageButton;

.field private final mDtmfDialer:Landroid/widget/LinearLayout;

.field private mIsDialDisabled:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mMakeCall:Landroid/widget/ImageButton;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mUseQwertyKeyboard:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2a

    const/16 v3, 0x23

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    .line 72
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070066

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070067

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070068

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070069

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07006a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07006b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07006e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07006c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    .line 90
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "useQwertyKeyboard"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    .line 117
    iput v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/phone/SomcDtmfDialPad$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcDtmfDialPad$1;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 128
    new-instance v0, Lcom/android/phone/SomcDtmfDialPad$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcDtmfDialPad$2;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 141
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcDtmfDialPad constructor..."

    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    .line 143
    :cond_0
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 145
    iput-object p2, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    .line 146
    iput-boolean p3, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    .line 147
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcEditText;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->initDialpad(Landroid/content/Context;)V

    .line 157
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    .line 158
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpad:Landroid/widget/LinearLayout;

    .line 160
    iget-boolean v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->initButtonForTablet()V

    .line 173
    :cond_1
    return-void

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/SomcDtmfDialPad;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcDtmfDialPad;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/SomcDtmfDialPad;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/SomcDtmfDialPad;)Lcom/android/phone/SomcEditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/SomcDtmfDialPad;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcDtmfDialPad;->fireAction(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcDtmfDialPad;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SomcDtmfDialPad;C)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;
    .param p1, "x1"    # C

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SomcDtmfDialPad;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/SomcDtmfDialPad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/SomcDtmfDialPad;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    return v0
.end method

.method static synthetic access$910(Lcom/android/phone/SomcDtmfDialPad;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/SomcDtmfDialPad;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    return v0
.end method

.method private backspace()V
    .locals 4

    .prologue
    .line 355
    iget v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    .line 357
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V

    .line 361
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$6;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$6;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void
.end method

.method private checkNumber()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->noNumberInDialpad()V

    .line 466
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 471
    iput-boolean v1, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 476
    iget-boolean v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mIsDialDisabled:Z

    if-eqz v0, :cond_3

    .line 477
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->isCallTransferCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->numberInDialpad()V

    .line 486
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->noNumberInDialpad()V

    goto :goto_1

    .line 484
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->numberInDialpad()V

    goto :goto_1
.end method

.method private enableKeyListeners(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/phone/LargeCallView;

    .line 285
    .local v0, "callView":Lcom/android/phone/LargeCallView;
    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;

    move-result-object v1

    .line 287
    .local v1, "panel":Lcom/android/phone/SomcInCallButtonPanel;
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v4, 0x7f0700a9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 289
    iget-object v4, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mTouchListener:Landroid/view/View$OnTouchListener;

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 293
    iget-boolean v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    if-nez v2, :cond_1

    .line 294
    invoke-direct {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->initButtons(Z)V

    .line 296
    :cond_1
    return-void

    :cond_2
    move-object v2, v3

    .line 287
    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 288
    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 289
    goto :goto_2
.end method

.method private fireAction(ILjava/lang/Object;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "information"    # Ljava/lang/Object;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 273
    :cond_0
    return-void
.end method

.method private initButtonForTablet()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mAddToContact:Landroid/widget/ImageButton;

    .line 572
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mMakeCall:Landroid/widget/ImageButton;

    .line 573
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mAddToContact:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$7;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$7;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mMakeCall:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$8;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$8;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    return-void
.end method

.method private initButtons(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 299
    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$4;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    .line 321
    .local v1, "buttonClickListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/phone/SomcDtmfDialPad$5;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcDtmfDialPad$5;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    .line 339
    .local v3, "longClickListener":Landroid/view/View$OnLongClickListener;
    sget-object v5, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 340
    .local v4, "viewId":I
    iget-object v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 342
    .local v0, "button":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 343
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mTouchListener:Landroid/view/View$OnTouchListener;

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 344
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 345
    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 346
    if-eqz p1, :cond_4

    move-object v5, p0

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 347
    if-eqz p1, :cond_5

    move-object v5, v1

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v5, 0x7f07006c

    if-eq v4, v5, :cond_1

    const v5, 0x7f07006e

    if-eq v4, v5, :cond_1

    const v5, 0x7f070070

    if-ne v4, v5, :cond_0

    .line 349
    :cond_1
    if-eqz p1, :cond_6

    move-object v5, v3

    :goto_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 343
    goto :goto_1

    :cond_3
    move-object v5, v6

    .line 345
    goto :goto_2

    :cond_4
    move-object v5, v6

    .line 346
    goto :goto_3

    :cond_5
    move-object v5, v6

    .line 347
    goto :goto_4

    :cond_6
    move-object v5, v6

    .line 349
    goto :goto_5

    .line 352
    .end local v0    # "button":Landroid/view/View;
    .end local v4    # "viewId":I
    :cond_7
    return-void
.end method

.method private initDialpad(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, p0}, Lcom/android/phone/SomcEditText;->setSomcDtmfDialPad(Lcom/android/phone/SomcDtmfDialPad;)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 188
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$3;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private isCallTransferCode()Z
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/phone/SomcDtmfDialPad;->getDigits()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 535
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 536
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 537
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string v0, "SomcDtmfDialPad"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method private noNumberInDialpad()V
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->setButtonEnable(Z)V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->noNumberInDialpad()V

    goto :goto_0
.end method

.method private numberInDialpad()V
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->setButtonEnable(Z)V

    .line 593
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->numberInDialpad()V

    goto :goto_0
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 206
    .local v0, "viewId":I
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return v5

    .line 210
    :pswitch_0
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcDtmfDialPad;->processDtmf(C)V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 224
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 226
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    goto :goto_0

    .line 238
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_0

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 241
    :pswitch_4
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 242
    iput-boolean v6, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    .line 243
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->backspace()V

    goto :goto_0

    .line 247
    :pswitch_5
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 248
    iput-boolean v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private final processDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 377
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->startTone(C)V

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setButtonEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mAddToContact:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mAddToContact:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 606
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mMakeCall:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mMakeCall:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 608
    return-void
.end method

.method private simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 517
    const/4 v8, 0x0

    .line 518
    .local v8, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 528
    :goto_0
    if-eqz v8, :cond_0

    .line 529
    invoke-direct {p0, p1, v8}, Lcom/android/phone/SomcDtmfDialPad;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 530
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 532
    :cond_0
    return-void

    .line 520
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 522
    goto :goto_0

    .line 524
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->enableKeyListeners(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    .line 417
    return-void
.end method

.method public getDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 436
    iget-object v6, p0, Lcom/android/phone/SomcDtmfDialPad;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/SomcDtmfDialPad;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 439
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 440
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 441
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 443
    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 459
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    :goto_0
    return v8

    .line 446
    .restart local v0    # "bottom":I
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    .restart local v3    # "top":I
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 449
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 450
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 451
    .local v5, "y":I
    if-le v4, v1, :cond_1

    if-ge v4, v2, :cond_1

    if-le v5, v3, :cond_1

    if-ge v5, v0, :cond_1

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 454
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 496
    const/16 v3, 0x17

    if-eq p2, v3, :cond_0

    const/16 v3, 0x42

    if-ne p2, v3, :cond_2

    .line 497
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/phone/SomcDtmfDialPad;->simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 513
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 499
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getNumber()C

    move-result v0

    .line 500
    .local v0, "c":C
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 502
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    iget-object v4, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 504
    invoke-direct {p0, p1, p3}, Lcom/android/phone/SomcDtmfDialPad;->simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 505
    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 509
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Character;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v3, p3}, Lcom/android/phone/SomcDtmfDialPad;->simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V

    .line 401
    iget-boolean v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b013e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->enableKeyListeners(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 409
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/CallView$CallViewActionListener;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad;->mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 277
    return-void
.end method

.method public setDialDisabled(Z)V
    .locals 0
    .param p1, "isDisabled"    # Z

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/android/phone/SomcDtmfDialPad;->mIsDialDisabled:Z

    .line 541
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V

    .line 542
    return-void
.end method

.method public setDigits(Ljava/lang/String;)V
    .locals 1
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 425
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V

    .line 426
    return-void
.end method

.method public startTone(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 259
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->fireAction(ILjava/lang/Object;)V

    .line 260
    return-void
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 266
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->fireAction(ILjava/lang/Object;)V

    .line 267
    return-void
.end method
