.class public Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
.super Landroid/widget/LinearLayout;
.source "ConversationContactBadge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationContactBadge"

.field private static mSaveContactDialog:Landroid/app/AlertDialog;


# instance fields
.field private mContactBadgeClickListener:Landroid/view/View$OnClickListener;

.field private mContactImage:Landroid/widget/QuickContactBadge;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mPersonPhoto:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactBadgeClickListener:Landroid/view/View$OnClickListener;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactBadgeClickListener:Landroid/view/View$OnClickListener;

    .line 76
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getThemeDefaultContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->launchProfileViewer()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Landroid/widget/QuickContactBadge;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showSaveToContactDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->sendAddressToContact()V

    return-void
.end method

.method public static dismissSaveToContactDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    sget-object v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sput-object v4, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    .line 150
    :cond_0
    return-void

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ConversationContactBadge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSaveContactDialog has dismissed, just catch the exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    sput-object v4, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    throw v1
.end method

.method private launchProfileViewer()V
    .locals 4

    .prologue
    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private sendAddressToContact()V
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    if-nez v2, :cond_0

    .line 157
    const-string v2, "ConversationContactBadge"

    const-string v3, "mParticipant is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "phone"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ConversationContactBadge"

    const-string v3, "Activity not found for Intent.ACTION_INSERT_OR_EDIT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$3;-><init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private showSaveToContactDialog()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004f

    new-instance v2, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    .line 136
    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    return-void
.end method


# virtual methods
.method public showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "personPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 90
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mPersonPhoto:Landroid/graphics/Bitmap;

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 99
    .local v0, "isContactBadgeEnabled":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 101
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactBadgeClickListener:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mPersonPhoto:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void

    .end local v0    # "isContactBadgeEnabled":Z
    :cond_1
    move v0, v1

    .line 95
    goto :goto_0

    .line 101
    .restart local v0    # "isContactBadgeEnabled":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mPersonPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
