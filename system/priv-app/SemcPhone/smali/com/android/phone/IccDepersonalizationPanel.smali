.class public Lcom/android/phone/IccDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccDepersonalizationPanel.java"


# instance fields
.field private final ENTRY:I

.field private final ERROR:I

.field private final IN_PROGRESS:I

.field private final SUCCESS:I

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPersoSubtype:I

.field private final mPersoSubtypeLabels:[[I

.field private mPersoSubtypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 229
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 81
    iput v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 82
    iput v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 83
    iput v5, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 84
    iput v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 89
    const/16 v0, 0x19

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeLabels:[[I

    .line 184
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 200
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 294
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 336
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 230
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 231
    return-void

    .line 89
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x7f0b0215
        0x7f0b0223
        0x7f0b022f
        0x7f0b023b
    .end array-data

    :array_4
    .array-data 4
        0x7f0b0216
        0x7f0b0224
        0x7f0b0230
        0x7f0b023c
    .end array-data

    :array_5
    .array-data 4
        0x7f0b0217
        0x7f0b0226
        0x7f0b0232
        0x7f0b023e
    .end array-data

    :array_6
    .array-data 4
        0x7f0b0218
        0x7f0b0225
        0x7f0b0231
        0x7f0b023d
    .end array-data

    :array_7
    .array-data 4
        0x7f0b0219
        0x7f0b0227
        0x7f0b0233
        0x7f0b023f
    .end array-data

    :array_8
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_9
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_a
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_b
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_c
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_d
    .array-data 4
        0x7f0b021a
        0x7f0b0228
        0x7f0b0234
        0x7f0b0240
    .end array-data

    :array_e
    .array-data 4
        0x7f0b021b
        0x7f0b0229
        0x7f0b0235
        0x7f0b0241
    .end array-data

    :array_f
    .array-data 4
        0x7f0b021c
        0x7f0b022a
        0x7f0b0236
        0x7f0b0242
    .end array-data

    :array_10
    .array-data 4
        0x7f0b021d
        0x7f0b022c
        0x7f0b0238
        0x7f0b0244
    .end array-data

    :array_11
    .array-data 4
        0x7f0b021e
        0x7f0b022b
        0x7f0b0237
        0x7f0b0243
    .end array-data

    :array_12
    .array-data 4
        0x7f0b021f
        0x7f0b022d
        0x7f0b0239
        0x7f0b0245
    .end array-data

    :array_13
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_14
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_15
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_16
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_17
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_18
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subtype"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 235
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 81
    iput v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 82
    iput v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 83
    iput v5, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 84
    iput v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 89
    const/16 v0, 0x19

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeLabels:[[I

    .line 184
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 200
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 294
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 336
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 236
    iput p2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 237
    return-void

    .line 89
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x7f0b0215
        0x7f0b0223
        0x7f0b022f
        0x7f0b023b
    .end array-data

    :array_4
    .array-data 4
        0x7f0b0216
        0x7f0b0224
        0x7f0b0230
        0x7f0b023c
    .end array-data

    :array_5
    .array-data 4
        0x7f0b0217
        0x7f0b0226
        0x7f0b0232
        0x7f0b023e
    .end array-data

    :array_6
    .array-data 4
        0x7f0b0218
        0x7f0b0225
        0x7f0b0231
        0x7f0b023d
    .end array-data

    :array_7
    .array-data 4
        0x7f0b0219
        0x7f0b0227
        0x7f0b0233
        0x7f0b023f
    .end array-data

    :array_8
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_9
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_a
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_b
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_c
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_d
    .array-data 4
        0x7f0b021a
        0x7f0b0228
        0x7f0b0234
        0x7f0b0240
    .end array-data

    :array_e
    .array-data 4
        0x7f0b021b
        0x7f0b0229
        0x7f0b0235
        0x7f0b0241
    .end array-data

    :array_f
    .array-data 4
        0x7f0b021c
        0x7f0b022a
        0x7f0b0236
        0x7f0b0242
    .end array-data

    :array_10
    .array-data 4
        0x7f0b021d
        0x7f0b022c
        0x7f0b0238
        0x7f0b0244
    .end array-data

    :array_11
    .array-data 4
        0x7f0b021e
        0x7f0b022b
        0x7f0b0237
        0x7f0b0243
    .end array-data

    :array_12
    .array-data 4
        0x7f0b021f
        0x7f0b022d
        0x7f0b0239
        0x7f0b0245
    .end array-data

    :array_13
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_14
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_15
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_16
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_17
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data

    :array_18
    .array-data 4
        0x7f0b0220
        0x7f0b022e
        0x7f0b023a
        0x7f0b0246
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccDepersonalizationPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/IccDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccDepersonalizationPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private displayStatus(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, "label":I
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeLabels:[[I

    iget v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    aget-object v2, v2, v3

    aget v1, v2, p1

    .line 317
    if-nez v1, :cond_0

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Perso Subtype :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 321
    :cond_0
    if-nez p1, :cond_1

    .line 322
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "displayText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    .end local v0    # "displayText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 245
    const v2, 0x7f07003a

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 246
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 247
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v0, v1

    .line 251
    check-cast v0, Landroid/text/Spannable;

    .line 252
    .local v0, "span":Landroid/text/Spannable;
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 254
    const v2, 0x7f070038

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 255
    const v2, 0x7f070039

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    .line 256
    invoke-direct {p0, v5}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    .line 258
    const v2, 0x7f07003b

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 259
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v2, 0x7f07003c

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 264
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :goto_0
    const v2, 0x7f07003d

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 275
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 277
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 278
    return-void

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 287
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 283
    return-void
.end method
