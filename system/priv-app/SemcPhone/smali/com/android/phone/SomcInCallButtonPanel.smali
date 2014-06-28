.class public Lcom/android/phone/SomcInCallButtonPanel;
.super Ljava/lang/Object;
.source "SomcInCallButtonPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcInCallButtonPanel$InCallButton;
    }
.end annotation


# static fields
.field private static final ADD_CALL_BUTTON:[I

.field private static final DIALPAD_BUTTON_CLOSE:[I

.field private static final DIALPAD_BUTTON_OPEN:[I

.field private static final HELD_CALL_BUTTON:[I

.field private static final MAKE_CALL_BUTTON:[I

.field private static final MUTE_BUTTON:[I

.field private static final MUTE_BUTTON_ACTIVE:[I

.field private static final RETRIEVE_CALL_BUTTON:[I

.field private static final ROUTE_SOUND_BT_CONNECTED_BUTTON:[I

.field private static final ROUTE_SOUND_BT_DISABLED_BUTTON:[I

.field private static final ROUTE_SOUND_BT_HEADSET_BUTTON:[I

.field private static final ROUTE_SOUND_BT_SPEAKER_BUTTON:[I

.field private static final ROUTE_SOUND_BUTTON:[I

.field private static final ROUTE_SOUND_SPEAKER_ACTIVE_BUTTON:[I

.field private static final SAVE_NUMBER_BUTTON:[I

.field private static sIgnoreNextUpTouchEvent:Z


# instance fields
.field private mBluetoothAvailible:Z

.field private mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mCallView:Lcom/android/phone/CallView;

.field private mContext:Landroid/content/Context;

.field private mDtmlDialpadOpen:Z

.field private mIsEmergencyCall:Z

.field private mIsLandscape:Z

.field private mListener:Lcom/android/phone/CallView$CallViewActionListener;

.field private mPaddingLeft:I

.field private mUseQwertyKeyboard:Z

.field private mView:Landroid/widget/RelativeLayout;

.field private micMuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_OPEN:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->RETRIEVE_CALL_BUTTON:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_CLOSE:[I

    .line 128
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BUTTON:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_SPEAKER_ACTIVE_BUTTON:[I

    .line 150
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_CONNECTED_BUTTON:[I

    .line 161
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_HEADSET_BUTTON:[I

    .line 172
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_SPEAKER_BUTTON:[I

    .line 183
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_DISABLED_BUTTON:[I

    .line 194
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    .line 205
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON_ACTIVE:[I

    .line 216
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    .line 227
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    .line 238
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    .line 249
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->HELD_CALL_BUTTON:[I

    return-void

    .line 95
    nop

    :array_0
    .array-data 4
        0x7f02006a
        0x0
        0x7f020078
        0x7f020076
        0x64
        0x1
        0x7f0b00a6
        0x7f020077
    .end array-data

    .line 106
    :array_1
    .array-data 4
        0x7f020082
        0x0
        0x7f020084
        0x7f020085
        0x6e
        0x1
        0x7f0b03a7
        0x7f020083
    .end array-data

    .line 117
    :array_2
    .array-data 4
        0x7f020073
        0x0
        0x7f020075
        0x7f020076
        0x65
        0x1
        0x7f0b00a6
        0x7f020074
    .end array-data

    .line 128
    :array_3
    .array-data 4
        0x7f020088
        0x0
        0x7f02008e
        0x7f02008c
        0x6d
        0x1
        0x7f0b0132
        0x7f02008d
    .end array-data

    .line 139
    :array_4
    .array-data 4
        0x7f020089
        0x0
        0x7f02008b
        0x7f02008c
        0x6d
        0x1
        0x7f0b0131
        0x7f02008a
    .end array-data

    .line 150
    :array_5
    .array-data 4
        0x7f02005a
        0x0
        0x7f02005c
        0x7f02008c
        0x6d
        0x1
        0x7f0b0133
        0x7f02005b
    .end array-data

    .line 161
    :array_6
    .array-data 4
        0x7f02005d
        0x0
        0x7f02005f
        0x7f02008c
        0x6d
        0x1
        0x7f0b0133
        0x7f02005e
    .end array-data

    .line 172
    :array_7
    .array-data 4
        0x7f020060
        0x0
        0x7f020062
        0x7f02008c
        0x6d
        0x1
        0x7f0b0133
        0x7f020061
    .end array-data

    .line 183
    :array_8
    .array-data 4
        0x7f020059
        0x0
        0x7f020059
        0x7f020059
        0x6d
        0x2
        0x7f0b0133
        0x7f020059
    .end array-data

    .line 194
    :array_9
    .array-data 4
        0x7f02007a
        0x0
        0x7f020080
        0x7f02007e
        0x69
        0x1
        0x7f0b00a4
        0x7f02007f
    .end array-data

    .line 205
    :array_a
    .array-data 4
        0x7f02007b
        0x0
        0x7f02007d
        0x7f02007e
        0x6a
        0x1
        0x7f0b0134
        0x7f02007c
    .end array-data

    .line 216
    :array_b
    .array-data 4
        0x7f020066
        0x0
        0x7f020069
        0x7f020067
        0x6b
        0x1
        0x7f0b00a7
        0x7f020068
    .end array-data

    .line 227
    :array_c
    .array-data 4
        0x7f02006f
        0x0
        0x7f020072
        0x7f020070
        0x66
        0x2
        0x7f0b00a2
        0x7f020071
    .end array-data

    .line 238
    :array_d
    .array-data 4
        0x7f02006b
        0x0
        0x7f02006e
        0x7f02006c
        0x6c
        0x2
        0x7f0b00a8
        0x7f02006d
    .end array-data

    .line 249
    :array_e
    .array-data 4
        0x7f020081
        0x0
        0x7f020087
        0x7f020085
        0x6e
        0x1
        0x7f0b03a6
        0x7f020086
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;ZZ)V
    .locals 9
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callView"    # Lcom/android/phone/CallView;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "useQwertyKeyboard"    # Z
    .param p5, "isLandscape"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    .line 35
    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 42
    iput-boolean v8, p0, Lcom/android/phone/SomcInCallButtonPanel;->micMuted:Z

    .line 43
    iput-boolean v8, p0, Lcom/android/phone/SomcInCallButtonPanel;->mBluetoothAvailible:Z

    .line 44
    iput-boolean v8, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    .line 55
    iput-boolean v8, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    .line 56
    iput-boolean v8, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    .line 57
    iput-boolean v8, p0, Lcom/android/phone/SomcInCallButtonPanel;->mDtmlDialpadOpen:Z

    .line 58
    iput v8, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    .line 61
    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 62
    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 63
    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 64
    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 65
    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 444
    const-string v6, "Creating SomcInCallButtonPanel"

    invoke-static {v6}, Lcom/android/phone/SomcInCallButtonPanel;->log(Ljava/lang/String;)V

    .line 445
    const v6, 0x7f0700a8

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    .line 446
    iput-object p2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    .line 447
    iput-object p3, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    .line 448
    iput-boolean p4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    .line 449
    iput-boolean p5, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    .line 452
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v7, 0x7f07006d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, "btn1":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v7, 0x7f07006f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 456
    .local v1, "btn2":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v7, 0x7f070086

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 459
    .local v2, "btn3":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v7, 0x7f070071

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 462
    .local v3, "btn4":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v7, 0x7f070087

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 465
    .local v4, "btn5":Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    new-instance v6, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v7, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    invoke-direct {v6, p3, v0, v7}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/content/Context;Landroid/view/View;[I)V

    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 469
    new-instance v7, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_DISABLED_BUTTON:[I

    :goto_0
    invoke-direct {v7, p3, v1, v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/content/Context;Landroid/view/View;[I)V

    iput-object v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 471
    new-instance v6, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v7, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    invoke-direct {v6, p3, v2, v7}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/content/Context;Landroid/view/View;[I)V

    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 472
    new-instance v6, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v7, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_OPEN:[I

    invoke-direct {v6, p3, v3, v7}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/content/Context;Landroid/view/View;[I)V

    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 473
    new-instance v6, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v7, Lcom/android/phone/SomcInCallButtonPanel;->HELD_CALL_BUTTON:[I

    invoke-direct {v6, p3, v4, v7}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/content/Context;Landroid/view/View;[I)V

    iput-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 475
    iget-boolean v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    if-eqz v6, :cond_0

    .line 476
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0a0000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    .line 478
    iget-boolean v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mDtmlDialpadOpen:Z

    if-eqz v6, :cond_3

    .line 479
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 480
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 487
    :cond_0
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 489
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 491
    .local v5, "buttonWidth":I
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 492
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 493
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 494
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 495
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 498
    .end local v5    # "buttonWidth":I
    :cond_1
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 499
    return-void

    .line 469
    :cond_2
    sget-object v6, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BUTTON:[I

    goto/16 :goto_0

    .line 482
    :cond_3
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 483
    iget-object v6, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    iget v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/phone/SomcInCallButtonPanel;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 854
    const-string v0, "SomcInCallButtonPanel"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    return-void
.end method


# virtual methods
.method public disableAllButton()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 654
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 655
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_DISABLED_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 656
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 657
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 658
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 659
    return-void
.end method

.method public dtmlDialpadOpen(Z)V
    .locals 6
    .param p1, "open"    # Z

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mDtmlDialpadOpen:Z

    .line 300
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 301
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_3

    .line 302
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 304
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0130

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 307
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0136

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_CLOSE:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 311
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0137

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 315
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 317
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 322
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setSoundRoutingOptionsVisibility(I)V

    .line 346
    :goto_1
    return-void

    .line 318
    :cond_2
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 320
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 325
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b012f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 328
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0135

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_OPEN:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 331
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0138

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 335
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    if-eqz v1, :cond_5

    .line 336
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 337
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 344
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->micMuted:Z

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setMicMuted(Z)V

    goto :goto_1

    .line 338
    :cond_5
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    if-eqz v1, :cond_4

    .line 339
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 340
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/16 v3, 0x8

    .line 531
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "hideButtonPanelAnim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    new-instance v1, Lcom/android/phone/SomcInCallButtonPanel$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallButtonPanel$1;-><init>(Lcom/android/phone/SomcInCallButtonPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 547
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 555
    .end local v0    # "hideButtonPanelAnim":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 549
    .restart local v0    # "hideButtonPanelAnim":Landroid/view/animation/Animation;
    :cond_0
    const-string v1, "SomcInCallButtonPanel"

    const-string v2, "hide: hideButtonPanelAnim is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 553
    .end local v0    # "hideButtonPanelAnim":Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public noNumberInDialpad()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 284
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 286
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    aput v2, v0, v3

    .line 290
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    aput v2, v0, v3

    goto :goto_0
.end method

.method public numberInDialpad()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 267
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    goto :goto_0

    .line 274
    :cond_1
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    aput v2, v0, v3

    .line 275
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    aput v2, v0, v3

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 627
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 628
    return-void

    .line 578
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    goto :goto_0

    .line 582
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    goto :goto_0

    .line 586
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mBluetoothAvailible:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x1b

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setSoundRoutingOptionsVisibility(I)V

    goto :goto_0

    .line 596
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x13

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 600
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 604
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 608
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->isButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 614
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->isButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 620
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->isButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    .line 563
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 564
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 565
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 566
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 567
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 568
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/CallView$CallViewActionListener;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 507
    return-void
.end method

.method public setHeldCallButtonValue(ZZ)V
    .locals 2
    .param p1, "isHeldCall"    # Z
    .param p2, "isDisabled"    # Z

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->RETRIEVE_CALL_BUTTON:[I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 638
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 640
    return-void

    .line 637
    :cond_1
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->HELD_CALL_BUTTON:[I

    goto :goto_0

    .line 638
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setImageNull()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setImageNull()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$800(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 862
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setImageNull()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$800(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 863
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setImageNull()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$800(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 864
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setImageNull()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$800(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 865
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setImageNull()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$800(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 866
    return-void
.end method

.method public setInOutgoingCallState(Z)V
    .locals 3
    .param p1, "outgoingCall"    # Z

    .prologue
    .line 429
    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    const/4 v2, 0x5

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    aput v0, v1, v2

    .line 430
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->updateButton()V

    .line 433
    :cond_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsEmergencyCall(Z)V
    .locals 0
    .param p1, "isEmergency"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    .line 425
    return-void
.end method

.method public setMicButtonEnabled(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v3, 0x5

    .line 376
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 377
    .local v0, "enabledValue":I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v1

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_2

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 384
    :goto_1
    return-void

    .line 376
    .end local v0    # "enabledValue":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 381
    .restart local v0    # "enabledValue":I
    :cond_2
    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    aput v0, v1, v3

    .line 382
    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON_ACTIVE:[I

    aput v0, v1, v3

    goto :goto_1
.end method

.method public setMicMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    const/16 v2, 0x6a

    const/16 v1, 0x69

    .line 353
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 355
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 367
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->micMuted:Z

    .line 368
    return-void

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 357
    :cond_3
    if-eqz p1, :cond_4

    .line 358
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    goto :goto_0

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    goto :goto_0
.end method

.method public setNavigationBarShowMargins(Z)V
    .locals 5
    .param p1, "isNavigationBarShow"    # Z

    .prologue
    .line 669
    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 671
    .local v0, "marginBottom":I
    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 672
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz p1, :cond_0

    .end local v0    # "marginBottom":I
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 674
    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    return-void

    .line 672
    .restart local v0    # "marginBottom":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 644
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 645
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 647
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton5:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 648
    return-void
.end method

.method public setRouteSoundButtonState(ZZZ)V
    .locals 2
    .param p1, "speakerOn"    # Z
    .param p2, "bluetoothOn"    # Z
    .param p3, "bluetoothConnected"    # Z

    .prologue
    .line 398
    iput-boolean p3, p0, Lcom/android/phone/SomcInCallButtonPanel;->mBluetoothAvailible:Z

    .line 400
    if-nez p3, :cond_2

    .line 401
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_DISABLED_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 416
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_SPEAKER_ACTIVE_BUTTON:[I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BUTTON:[I

    goto :goto_1

    .line 408
    :cond_2
    if-eqz p2, :cond_3

    .line 409
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_CONNECTED_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    goto :goto_0

    .line 410
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_SPEAKER_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    goto :goto_0

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BT_HEADSET_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 515
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 517
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mBluetoothAvailible:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 523
    :cond_1
    return-void
.end method
