.class public Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
.super Landroid/app/Activity;
.source "MmsOnePageViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_MIMETYPE:I = 0x7f0a007f

.field private static final ATTACHMENT_URI:I = 0x7f0a007e

.field public static final INTENT_KEY_CALLER:Ljava/lang/String; = "caller"

.field public static final INTENT_KEY_CALLER_MMS_PREVIEW:Ljava/lang/String; = "MmsPreview"

.field public static final INTENT_KEY_CALLER_READ_MORE:Ljava/lang/String; = "ReadMore"

.field static final MENU_DELETE:I = 0x3

.field static final MENU_DOWNLOAD:I = 0x1

.field static final MENU_FORWARD:I = 0x2

.field static final MENU_PLAY_SLIDESHOW:I = 0x4

.field static final MENU_RESEND:I = 0x0

.field static final MENU_TEXT_COPY:I = 0x5

.field private static final MSG_ID_DISMISS_PROGRESS_DLG:I = 0x2

.field private static final MSG_ID_SHOW_PROGRESS_DLG:I = 0x1

.field private static final PROGRESS_DLG_DELAY:I = 0x1f4


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuForTest:Landroid/view/ContextMenu;

.field mHandler:Landroid/os/Handler;

.field private mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

.field private mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mPd:Landroid/app/ProgressDialog;

.field private mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

.field private mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    .line 98
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    .line 100
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    .line 102
    new-instance v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mHandler:Landroid/os/Handler;

    .line 408
    new-instance v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 425
    new-instance v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$5;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->showProgressDlg()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->dismissProgressDlg()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
    .param p1, "x1"    # Landroid/view/ContextMenu;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method private addSubjectForMmsPreview(Ljava/lang/String;)V
    .locals 5
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 471
    const v4, 0x7f0a007c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 472
    .local v0, "messageItemView":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 473
    .local v1, "root":Landroid/widget/RelativeLayout;
    const v4, 0x7f0a0084

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 474
    .local v3, "textContainer":Landroid/widget/LinearLayout;
    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 475
    .local v2, "subjectTextView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 477
    return-void
.end method

.method private dismissProgressDlg()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    .line 140
    return-void
.end method

.method private showProgressDlg()V
    .locals 6

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 129
    :cond_1
    const-string v1, ""

    const v0, 0x7f070128

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private updateActionBar(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 455
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 457
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 458
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 459
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 460
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 462
    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 463
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getContextMenuForTest()Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenuForTest:Landroid/view/ContextMenu;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 375
    return-void
.end method

.method public onContentDeleted()V
    .locals 0

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 371
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x1

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v12

    :cond_0
    :goto_0
    return v12

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->resendMessage()V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->downloadMessage()V

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->forwardMessage()V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    iget v1, v1, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v1, v12, :cond_1

    move v11, v12

    .line 265
    .local v11, "isStarred":Z
    :goto_1
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 266
    .local v10, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v7, 0x0

    .line 267
    .local v7, "checkBoxTextResId":I
    const/4 v8, 0x0

    .line 268
    .local v8, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    const/4 v9, 0x0

    .line 270
    .local v9, "confirmMessage":I
    if-eqz v11, :cond_2

    .line 271
    const v9, 0x7f070178

    .line 272
    const v7, 0x7f070177

    .line 273
    new-instance v8, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$2;

    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-direct {v8, p0, v10}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$2;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 283
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :goto_2
    new-instance v2, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;

    invoke-direct {v2, p0, v10}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 290
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v5, v4

    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .end local v2    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "checkBoxTextResId":I
    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v9    # "confirmMessage":I
    .end local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v11    # "isStarred":Z
    :cond_1
    move v11, v0

    .line 264
    goto :goto_1

    .line 280
    .restart local v7    # "checkBoxTextResId":I
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .restart local v9    # "confirmMessage":I
    .restart local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v11    # "isStarred":Z
    :cond_2
    const v9, 0x7f070039

    goto :goto_2

    .line 296
    .end local v7    # "checkBoxTextResId":I
    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v9    # "confirmMessage":I
    .end local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v11    # "isStarred":Z
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->playSlideshow()V

    goto :goto_0

    .line 301
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyTextToClipboard()V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, -0x1

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    const-string v2, "caller"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mCaller:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mCaller:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 194
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    .line 195
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v2

    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 196
    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    goto :goto_0

    .line 201
    :cond_2
    new-instance v2, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    invoke-direct {v2, p0, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    .line 202
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 212
    instance-of v0, p2, Lcom/sonyericsson/conversations/ui/MessageItemView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mCaller:Ljava/lang/String;

    const-string v1, "ReadMore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x5

    const v1, 0x7f0700d2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isPlaySlideshowVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x4

    const v1, 0x7f07004b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    const v0, 0x7f07004a

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isDownloadVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const/4 v0, 0x1

    const v1, 0x7f070048

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    const/4 v0, 0x2

    const v1, 0x7f070049

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 236
    :cond_4
    const/4 v0, 0x3

    const v1, 0x7f07001a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 238
    :cond_5
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenuForTest:Landroid/view/ContextMenu;

    .line 239
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    .line 240
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 359
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    .line 362
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 363
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    if-eqz p2, :cond_0

    .line 394
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    const/4 v6, 0x0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 396
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/x-vCard"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveVCardContact()V

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    goto :goto_0
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
    .locals 11
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "ThreadId"    # J

    .prologue
    .line 312
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    :cond_0
    move-object v4, p1

    .line 315
    check-cast v4, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 316
    .local v4, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 317
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 318
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    .line 320
    .local v10, "view":Lcom/sonyericsson/conversations/ui/MessageItemMmsView;
    if-eqz v10, :cond_1

    instance-of v0, v10, Lcom/sonyericsson/conversations/ui/MessageContent;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0, v10}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 322
    move-object v7, v10

    .line 323
    .local v7, "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    instance-of v0, v7, Lcom/sonyericsson/conversations/ui/MessageContentClickable;

    if-eqz v0, :cond_1

    move-object v6, v7

    .line 324
    check-cast v6, Lcom/sonyericsson/conversations/ui/MessageContentClickable;

    .line 325
    .local v6, "clickable":Lcom/sonyericsson/conversations/ui/MessageContentClickable;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v6, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v6, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 327
    invoke-interface {v6, p0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V

    .line 330
    .end local v6    # "clickable":Lcom/sonyericsson/conversations/ui/MessageContentClickable;
    .end local v7    # "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getDefaultMessageOptions(Lcom/sonyericsson/conversations/model/Message;)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 333
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J

    invoke-virtual {v10, v4, v0, v1}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    .line 334
    invoke-virtual {p0, v10}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mCaller:Ljava/lang/String;

    const-string v1, "MmsPreview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->updateActionBar(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->addSubjectForMmsPreview(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "titleString":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 347
    :cond_3
    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->updateActionBar(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
