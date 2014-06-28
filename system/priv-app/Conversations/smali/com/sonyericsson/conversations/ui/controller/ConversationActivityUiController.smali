.class public abstract Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/memory/LowMemoryListener;
.implements Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
.implements Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;
    }
.end annotation


# static fields
.field private static final BOTTOM_FRAGMENT_EDITOR_TAG:Ljava/lang/String; = "bottom_fragment_editor"

.field private static final INSTANCE_THREAD_ID:Ljava/lang/String; = "ThreadId"

.field private static final SEND_ANIMATION_DURATION:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "ConversationActivityUiController"


# instance fields
.field protected mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

.field protected final mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

.field protected mBackDisabled:Z

.field protected mBackKeyPressed:Z

.field protected mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field protected mConvListContentArea:Landroid/widget/RelativeLayout;

.field protected mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

.field protected mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

.field mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

.field protected mFocusMessageUri:Landroid/net/Uri;

.field protected final mFragmentManager:Landroid/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field protected mHighlightPattern:Ljava/util/regex/Pattern;

.field private mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

.field protected mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

.field private mIsResumed:Z

.field private mIsSending:Z

.field private mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

.field protected mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

.field protected mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field protected mPd:Landroid/app/ProgressDialog;

.field private mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

.field private mSaveInstanceStateAlreadyCalled:Z

.field private mSendLock:Ljava/lang/Object;

.field private mSendingMessageKey:J

.field private mShouldReloadEditor:Z

.field protected mStopDraftSavingFlag:Z

.field protected mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

.field private mWaitingForAddedMessage:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 133
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 135
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 137
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 147
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    .line 160
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    .line 162
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mShouldReloadEditor:Z

    .line 170
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 172
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 182
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 184
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    .line 283
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 404
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    .line 444
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .line 445
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 446
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->clearStatusAfterSend()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessageUseInputNumber(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/android/mms/transaction/MessageSender;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendingComposedMessage()Lcom/android/mms/transaction/MessageSender;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshMsgList(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshEditorViews(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mShouldReloadEditor:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->addRecipientOnToFiled(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertMessageTypeInUiThread(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Landroid/net/Uri;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->backToMainActivity()V

    return-void
.end method

.method private addRecipientOnToFiled(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 915
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setFocus(Z)V

    .line 917
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ConversationActivityUiController"

    const-string v2, "Could not add recipient. Contacts is not installed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backToMainActivity()V
    .locals 2

    .prologue
    .line 1323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 1325
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1328
    .local v0, "homeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1329
    return-void
.end method

.method private cancelAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1100
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1102
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1107
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    .line 1109
    :cond_1
    return-void
.end method

.method static checkActivityLaunchAllowed(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1975
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1982
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1984
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1985
    .local v0, "intentUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1987
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1988
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "mmsto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1994
    :cond_0
    const/4 v2, 0x0

    .line 2000
    .end local v0    # "intentUri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private clearStatusAfterSend()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method private commitFragmentTransaction(Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    if-nez v0, :cond_0

    .line 951
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 964
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private convertMessageTypeInUiThread(I)V
    .locals 2
    .param p1, "messageType"    # I

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1129
    return-void
.end method

.method private deleteConversation()V
    .locals 15

    .prologue
    const v5, 0x7f0700dd

    const/4 v8, 0x0

    .line 2547
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 2607
    .local v6, "delPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v3, 0x1010355

    const v4, 0x7f070044

    const v7, 0x7f0700db

    const/4 v9, 0x0

    const/4 v14, 0x1

    move-object v0, p0

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    move-object v13, v8

    invoke-virtual/range {v0 .. v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 2612
    return-void
.end method

.method private determineSendIntentDataType(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)I
    .locals 4
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1448
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 1449
    .local v0, "forwardUri":Landroid/net/Uri;
    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 1450
    .local v1, "replyAllUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1451
    .local v2, "sendIntentType":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isUriInitedAndNotEmpty(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1452
    const/4 v2, 0x2

    .line 1456
    :cond_0
    :goto_0
    return v2

    .line 1453
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isUriInitedAndNotEmpty(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1454
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private dismissSaveContactDialog()V
    .locals 0

    .prologue
    .line 795
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->dismissSaveToContactDialog()V

    .line 796
    return-void
.end method

.method private finishUpToFieldFragment()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->finishUp()V

    .line 477
    :cond_0
    return-void
.end method

.method private getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1962
    const/4 v0, 0x0

    .line 1964
    .local v0, "subject":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftSubject()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1971
    :goto_0
    return-object v0

    .line 1965
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1283
    const-wide/16 v7, -0x1

    .line 1284
    .local v7, "id":J
    const/4 v6, 0x0

    .line 1286
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    .line 1289
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1291
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 1295
    :cond_0
    if-eqz v6, :cond_1

    .line 1296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1299
    :cond_1
    return-wide v7

    .line 1295
    .end local v2    # "projection":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1295
    :cond_2
    throw v0
.end method

.method private handleIntent(Landroid/os/Bundle;)Z
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    .line 823
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 827
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkActivityLaunchAllowed(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 828
    const v9, 0x7f0700d9

    invoke-virtual {p0, v9, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    .line 830
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 889
    :goto_0
    return v8

    .line 839
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->isNotificationIntent(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 840
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getUnReadMessagesThreadsFromNotificationIntent(Landroid/content/Intent;)I

    move-result v7

    .line 842
    .local v7, "unReadMessageThreads":I
    if-ne v7, v9, :cond_1

    .line 843
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 844
    .local v3, "mExtras":Landroid/os/Bundle;
    const-string v10, "unReadMessageUri"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, "sUri":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 849
    .end local v3    # "mExtras":Landroid/os/Bundle;
    .end local v4    # "sUri":Ljava/lang/String;
    .end local v7    # "unReadMessageThreads":I
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->parse(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/conversations/ui/persist/IntentData;

    move-result-object v10

    iput-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    .line 852
    if-eqz p1, :cond_6

    .line 853
    const-string v10, "ThreadId"

    invoke-virtual {v2, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 854
    .local v5, "threadId":J
    cmp-long v10, v5, v12

    if-nez v10, :cond_5

    .line 855
    const-string v8, "ThreadId"

    invoke-virtual {p1, v8, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 861
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v8, v5, v6}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 866
    .end local v5    # "threadId":J
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    :goto_2
    if-nez v0, :cond_2

    .line 868
    const-wide/16 v10, -0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v11, v8}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 872
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 873
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    :cond_2
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 880
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 883
    :cond_3
    new-instance v8, Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-direct {v8, v10, v0, v11}, Lcom/sonyericsson/conversations/ui/Composer;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 884
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v8, v8, Lcom/sonyericsson/conversations/ui/persist/IntentData;->focusMessageUri:Landroid/net/Uri;

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 885
    const-string v8, "highlight"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "highlight":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 887
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    invoke-static {v8, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    :cond_4
    move v8, v9

    .line 889
    goto/16 :goto_0

    .line 858
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .end local v1    # "highlight":Ljava/lang/String;
    .restart local v5    # "threadId":J
    :cond_5
    const-string v10, "ThreadId"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v8, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 863
    .end local v5    # "threadId":J
    :cond_6
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v0, v8, Lcom/sonyericsson/conversations/ui/persist/IntentData;->conversation:Lcom/sonyericsson/conversations/model/Conversation;

    .restart local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    goto :goto_2
.end method

.method private handleMmsException()V
    .locals 2

    .prologue
    .line 1671
    const v0, 0x7f0700ca

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1674
    return-void
.end method

.method private handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V
    .locals 3
    .param p1, "re"    # Lcom/sonyericsson/conversations/util/ResizeException;

    .prologue
    .line 1657
    const v1, 0x7f0700ca

    .line 1658
    .local v1, "errorText":I
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v0

    .line 1660
    .local v0, "errorCode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1663
    const v1, 0x7f0700cb

    .line 1667
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1668
    return-void
.end method

.method private handleSecurityException()V
    .locals 2

    .prologue
    .line 1677
    const v0, 0x7f07006b

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1680
    return-void
.end method

.method private handleSendIntentContentUri(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1683
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v3, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1688
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1689
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1702
    :catch_0
    move-exception v1

    .line 1703
    .local v1, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string v3, "ConversationActivityUiController"

    const-string v4, "Could not resize image enough to fit the message"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1704
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V

    goto :goto_0

    .line 1690
    .end local v1    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1691
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVideoType(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1705
    :catch_1
    move-exception v0

    .line 1706
    .local v0, "e":Lcom/google/android/mms/MmsException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto :goto_0

    .line 1692
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_3
    :try_start_2
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/ogg"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1694
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1707
    :catch_2
    move-exception v2

    .line 1708
    .local v2, "se":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    goto :goto_0

    .line 1695
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_5
    :try_start_3
    const-string v3, "text/x-vCard"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1696
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVcardType(Landroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0
.end method

.method private handleSendIntentMessageUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1602
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 1609
    .local v0, "msg":Lcom/sonyericsson/conversations/model/Message;
    instance-of v1, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 1610
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMmsUri(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 1615
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    goto :goto_0

    .line 1611
    :cond_3
    instance-of v1, v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v1, :cond_2

    .line 1612
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v1, v1, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSendIntentMmsUri(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 1576
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/conversations/ui/Composer;->loadSlideshowModelFromMessageUri(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)V

    .line 1578
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 1581
    .local v0, "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    instance-of v1, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_1

    .line 1583
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isContentEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1590
    .restart local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1591
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v1, v1, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1596
    .end local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1593
    .restart local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private handleSendMultipleIntentContentUris(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1713
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v6, :cond_1

    .line 1749
    :cond_0
    return-void

    .line 1717
    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1718
    .local v0, "contentIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/net/Uri;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1719
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1722
    .local v1, "contentUri":Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v6, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1728
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1729
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v1, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1740
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1741
    .local v3, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string v6, "ConversationActivityUiController"

    const-string v9, "Could not resize image enough to fit the message"

    invoke-static {v6, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1742
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V

    goto :goto_0

    .end local v3    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_3
    move v6, v8

    .line 1729
    goto :goto_1

    .line 1730
    :cond_4
    :try_start_1
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1731
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_2
    invoke-direct {p0, v1, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVideoType(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1743
    .end local v5    # "type":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1744
    .local v2, "e":Lcom/google/android/mms/MmsException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto :goto_0

    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 1731
    goto :goto_2

    .line 1734
    :cond_6
    :try_start_2
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "application/ogg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1736
    :cond_7
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v7

    :goto_3
    invoke-virtual {v9, v1, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;Z)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1745
    .end local v5    # "type":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 1746
    .local v4, "se":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    goto :goto_0

    .end local v4    # "se":Ljava/lang/SecurityException;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_8
    move v6, v8

    .line 1736
    goto :goto_3

    .line 1737
    :cond_9
    :try_start_3
    const-string v6, "text/x-vCard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1738
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v7

    :goto_4
    invoke-direct {p0, v1, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVcardType(Landroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :cond_a
    move v6, v8

    goto :goto_4
.end method

.method private handleVcardType(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1649
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    .line 1650
    .local v0, "vCardUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, v0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V

    .line 1654
    :cond_0
    return-void
.end method

.method private handleVideoType(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1623
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)I

    move-result v0

    .line 1626
    .local v0, "errorCode":I
    if-nez v0, :cond_0

    .line 1627
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;Z)V

    .line 1630
    :cond_0
    if-eqz p2, :cond_1

    .line 1631
    const/16 v1, 0xca

    if-ne v0, v1, :cond_2

    .line 1632
    const v1, 0x7f070067

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1643
    :cond_1
    :goto_0
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_4

    .line 1644
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Content must not be sent"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1635
    :cond_2
    const/16 v1, 0xd2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_1

    .line 1637
    :cond_3
    const v1, 0x7f07012e

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    goto :goto_0

    .line 1646
    :cond_4
    return-void
.end method

.method private isUriInitedAndNotEmpty(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1438
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextDraftIfComposerEmpty()V
    .locals 4

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1876
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1880
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    .line 1881
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1883
    :cond_1
    return-void
.end method

.method private messageSubjectPrefixForType(I)Ljava/lang/String;
    .locals 3
    .param p1, "sendIntentType"    # I

    .prologue
    .line 1510
    const/4 v0, 0x0

    .line 1511
    .local v0, "prefix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1522
    :goto_0
    return-object v0

    .line 1513
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1515
    goto :goto_0

    .line 1517
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareSendAnimation()V
    .locals 7

    .prologue
    .line 745
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->prepareForSendAnimation()V

    .line 747
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getMessageItemSendAnimator()Landroid/animation/Animator;

    move-result-object v2

    .line 748
    .local v2, "messageItemSendAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getTextSendAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 749
    .local v1, "editTextAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getPileViewSendAnimator()Landroid/animation/Animator;

    move-result-object v3

    .line 750
    .local v3, "pileViewAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getComposerSendAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 752
    .local v0, "composerAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 753
    .local v4, "sendAnimator":Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 755
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 756
    const-wide/16 v5, 0x258

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 757
    new-instance v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 775
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setComposerSendAnimator(Landroid/animation/ObjectAnimator;)V

    .line 776
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v5, v4, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setSendAnimatorAndItemAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 777
    return-void
.end method

.method private prepareSendingComposedMessage()Lcom/android/mms/transaction/MessageSender;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 2480
    const/4 v1, 0x0

    .line 2482
    .local v1, "sender":Lcom/android/mms/transaction/MessageSender;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2483
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 2484
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v2

    .line 2486
    .local v2, "threadId":J
    instance-of v4, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_1

    .line 2487
    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendingComposedMms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;

    move-result-object v1

    .line 2495
    .end local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    .end local v2    # "threadId":J
    :cond_0
    :goto_0
    return-object v1

    .line 2488
    .restart local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    .restart local v2    # "threadId":J
    :cond_1
    instance-of v4, v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v4, :cond_2

    .line 2489
    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendingComposedSms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;

    move-result-object v1

    goto :goto_0

    .line 2491
    :cond_2
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "message originated from unknown type!"

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private prepareSendingComposedMms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;
    .locals 11
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 2397
    const/4 v0, 0x0

    .line 2399
    .local v0, "sender":Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2402
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isSubjectEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2403
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f07009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    .line 2407
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2408
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 2413
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->saveDraft()V

    .line 2417
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2418
    .local v6, "messageId":J
    invoke-static {v6, v7}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v10

    .local v10, "uri":Landroid/net/Uri;
    move-object v1, p1

    .line 2419
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    .line 2423
    .local v9, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    invoke-virtual {v1, v10, v9}, Lcom/sonyericsson/conversations/model/ModelCache;->cacheMessageSlideshow(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 2425
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    .end local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getRawPriority()I

    move-result v5

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 2427
    .restart local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->prepareForSendMessage()Landroid/net/Uri;

    move-result-object v8

    .line 2428
    .local v8, "messageUri":Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 2431
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    neg-long v1, v1

    iput-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 2434
    :cond_2
    return-object v0
.end method

.method private prepareSendingComposedSms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;
    .locals 12
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 2440
    const/4 v0, 0x0

    .local v0, "sender":Lcom/android/mms/transaction/MessageSender;
    move-object v11, p1

    .line 2442
    check-cast v11, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 2443
    .local v11, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/sonyericsson/conversations/model/Message;->setPriority(I)V

    .line 2445
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v10

    .line 2446
    .local v10, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 2447
    .local v9, "nrDests":I
    new-array v2, v9, [Ljava/lang/String;

    .line 2449
    .local v2, "dests":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 2450
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 2449
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2453
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v3, v11, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/SmsMessage;->getRawPriority()I

    move-result v6

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2455
    .restart local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->prepareForSendMessage()Landroid/net/Uri;

    move-result-object v8

    .line 2456
    .local v8, "messageUri":Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 2457
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 2460
    :cond_1
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2466
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 2469
    :cond_2
    return-object v0
.end method

.method private reStartSelfIfNeed(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v3, 0x4000000

    .line 536
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 540
    .local v0, "newIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/2addr v1, v3

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 543
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 544
    const/4 v1, 0x1

    .line 546
    .end local v0    # "newIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshEditorViews(Z)V
    .locals 2
    .param p1, "messageAdded"    # Z

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2392
    return-void
.end method

.method private refreshMsgList(Z)V
    .locals 2
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 2341
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2342
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2352
    :cond_1
    return-void
.end method

.method private removeDialogFragment()V
    .locals 3

    .prologue
    .line 799
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "alert-dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 801
    .local v0, "dlgFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 804
    :cond_0
    return-void
.end method

.method private removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V
    .locals 4
    .param p1, "fragmentEnum"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .prologue
    const/4 v3, 0x0

    .line 1020
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1022
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1024
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1026
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 1027
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1028
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    goto :goto_0

    .line 1033
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1035
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 1036
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1037
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    goto :goto_0

    .line 1042
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideInputMethod(Z)V

    .line 1044
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1045
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 1046
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1049
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setCallback(Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;)V

    .line 1050
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    goto :goto_0

    .line 1055
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1057
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 1058
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1059
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    goto :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V
    .locals 4
    .param p1, "fragmentEnum"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .prologue
    .line 974
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 976
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 978
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    const v1, 0x7f0a000e

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 980
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 985
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 986
    const v1, 0x7f0a0011

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 987
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 992
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    const v1, 0x7f0a0017

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const-string v3, "bottom_fragment_editor"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 995
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 1000
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    const v1, 0x7f0a0010

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1002
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveStatusForRestore()V
    .locals 4

    .prologue
    .line 550
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Z)J

    move-result-wide v1

    .line 553
    .local v1, "threadId":J
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 554
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "ThreadId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 555
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method private sendMessage(I)V
    .locals 3
    .param p1, "validRecipientsSize"    # I

    .prologue
    .line 2499
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2502
    const-string v0, ""

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v2, 0x7f070090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2503
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateConversationBeforeSendMessage()V

    .line 2505
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage()V

    .line 2507
    :cond_0
    return-void
.end method

.method private sendMessageUseInputNumber(Z)V
    .locals 4
    .param p1, "isInputNumber"    # Z

    .prologue
    .line 2534
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 2535
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2536
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 2537
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/model/Participant;->setIsInputNumber(Z)V

    goto :goto_0

    .line 2540
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    return-void
.end method

.method private setupEditorFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2785
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2786
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 2789
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mShouldReloadEditor:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->hasValidRecipients()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2790
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2794
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 2811
    :cond_2
    :goto_0
    return-void

    .line 2795
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2798
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    goto :goto_0

    .line 2801
    :cond_4
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mShouldReloadEditor:Z

    .line 2803
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_5

    .line 2804
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 2809
    :cond_5
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    goto :goto_0
.end method

.method private setupMsgListFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2760
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v0, :cond_0

    .line 2762
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 2780
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 2781
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 2782
    return-void

    .line 2763
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2770
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/model/Conversation;Z)V

    .line 2771
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    goto :goto_0

    .line 2773
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 2774
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 2775
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/model/Conversation;Z)V

    goto :goto_0
.end method

.method private setupToFieldFragment()V
    .locals 4

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2817
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->resetToField()V

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2822
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 2827
    :cond_1
    :goto_0
    return-void

    .line 2823
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2825
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    goto :goto_0
.end method

.method private showExternalSendErrorToast(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 2711
    const/4 v0, 0x0

    .line 2712
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 2752
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2714
    :pswitch_1
    const v0, 0x7f07006b

    .line 2749
    :goto_1
    if-eqz v0, :cond_0

    .line 2750
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    goto :goto_0

    .line 2718
    :pswitch_2
    const v0, 0x7f070067

    .line 2719
    goto :goto_1

    .line 2722
    :pswitch_3
    const v0, 0x7f070068

    .line 2723
    goto :goto_1

    .line 2726
    :pswitch_4
    const v0, 0x7f07006c

    .line 2727
    goto :goto_1

    .line 2733
    :pswitch_5
    const v0, 0x7f0700d9

    .line 2734
    goto :goto_1

    .line 2737
    :pswitch_6
    const v0, 0x7f0700da

    .line 2738
    goto :goto_1

    .line 2741
    :pswitch_7
    const v0, 0x7f0700c3

    .line 2742
    goto :goto_1

    .line 2712
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private updateComposerFromSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 8
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1460
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v6, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->determineSendIntentDataType(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)I

    move-result v3

    .line 1466
    .local v3, "sendIntentType":I
    packed-switch v3, :pswitch_data_0

    .line 1482
    iget-object v4, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 1484
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1485
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6, v4}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 1488
    :cond_2
    iget-object v5, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    .line 1489
    .local v5, "type":Ljava/lang/String;
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    .line 1491
    .local v0, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1492
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1493
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentContentUri(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1469
    .end local v0    # "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 1470
    .local v1, "forwardUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMessageUri(Landroid/net/Uri;)V

    .line 1471
    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageSubject(ILandroid/net/Uri;)V

    goto :goto_0

    .line 1475
    .end local v1    # "forwardUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v2, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 1476
    .local v2, "replyAllUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMessageUri(Landroid/net/Uri;)V

    .line 1477
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageSubject(ILandroid/net/Uri;)V

    .line 1478
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllMedia()V

    .line 1479
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1495
    .end local v2    # "replyAllUri":Landroid/net/Uri;
    .restart local v0    # "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendMultipleIntentContentUris(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMessageByRecipient(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/model/Message;
    .locals 6
    .param p1, "oldMessage"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveValidRecipients()V

    .line 2009
    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2011
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 2014
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 2015
    .local v0, "newMessage":Lcom/sonyericsson/conversations/model/Message;
    if-nez v0, :cond_1

    move-object v1, p1

    .line 2016
    .local v1, "updatedMessage":Lcom/sonyericsson/conversations/model/Message;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/model/Message;->setPriority(I)V

    .line 2018
    return-object v1

    .end local v1    # "updatedMessage":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    move-object v1, v0

    .line 2015
    goto :goto_0
.end method

.method private updateMessageSubject(ILandroid/net/Uri;)V
    .locals 7
    .param p1, "sendIntentType"    # I
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1535
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v5, p2}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 1536
    .local v2, "msg":Lcom/sonyericsson/conversations/model/Message;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 1539
    .local v1, "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    instance-of v5, v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v5, :cond_0

    .line 1572
    .end local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :goto_0
    return-void

    .line 1544
    .restart local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    const-string v3, ""

    .line 1545
    .local v3, "originalSubject":Ljava/lang/String;
    const-string v0, ""

    .line 1547
    .local v0, "finalSubject":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1548
    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 1560
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1562
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->messageSubjectPrefixForType(I)Ljava/lang/String;

    move-result-object v4

    .line 1563
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1564
    move-object v0, v3

    .line 1570
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/MmsMessage;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubject(Ljava/lang/String;Z)V

    .line 1571
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    goto :goto_0

    .line 1566
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected applyWallpaper(Landroid/net/Uri;J)V
    .locals 5
    .param p1, "selectedWallpaper"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    .line 627
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v2

    .line 628
    .local v2, "wallpapers":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 629
    .local v0, "context":Landroid/content/Context;
    if-nez p1, :cond_0

    .line 634
    :try_start_0
    invoke-virtual {v2, v0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setWallpaper(J)V

    .line 651
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 652
    :goto_1
    return-void

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ConversationActivityUiController"

    const-string v4, "Could not delete wallpaper."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 644
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeWallpaper(Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 645
    :catch_1
    move-exception v1

    .line 646
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "ConversationActivityUiController"

    const-string v4, "Could not store selected wallpaper."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkRecipientAndSend()V
    .locals 18

    .prologue
    .line 2187
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2189
    const v2, 0x7f070008

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    .line 2191
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    .line 2243
    :goto_0
    return-void

    .line 2195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2196
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage()V

    goto :goto_0

    .line 2199
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientsStatus()I

    move-result v17

    .line 2200
    .local v17, "recipientStatus":I
    packed-switch v17, :pswitch_data_0

    goto :goto_0

    .line 2202
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage(I)V

    goto :goto_0

    .line 2207
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f070132

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080027

    const v5, 0x1010355

    const v6, 0x7f070133

    const v7, 0x104000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 2213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    goto :goto_0

    .line 2217
    :pswitch_2
    new-instance v8, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    .line 2223
    .local v8, "positiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 2230
    .local v10, "negativeClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v4, 0x7f07012f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080027

    const v5, 0x1010355

    const v6, 0x7f070130

    const v7, 0x7f0700e1

    const v9, 0x7f0700e2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    .line 2200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public checkRecipientsStatus()I
    .locals 2

    .prologue
    .line 1371
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->hasValidRecipient()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    const/4 v1, 0x2

    .line 1387
    :goto_0
    return v1

    .line 1379
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    .line 1380
    .local v0, "invalidAddrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1382
    const/4 v1, 0x1

    goto :goto_0

    .line 1387
    .end local v0    # "invalidAddrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected collapseRecipientsList()V
    .locals 0

    .prologue
    .line 2843
    return-void
.end method

.method public convertToMessageType(I)V
    .locals 2
    .param p1, "messageType"    # I

    .prologue
    const/4 v1, 0x1

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v0, :cond_0

    .line 1898
    :goto_0
    return-void

    .line 1889
    :cond_0
    if-eq p1, v1, :cond_1

    .line 1890
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllMedia()V

    .line 1893
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V

    .line 1895
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 1897
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->loadNextDraftIfComposerEmpty()V

    goto :goto_0
.end method

.method protected abstract createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end method

.method protected abstract createEditorFragment(Lcom/sonyericsson/conversations/ui/Composer;)Lcom/sonyericsson/conversations/ui/EditorFragment;
.end method

.method protected discardWriteNew()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->discardDraftMessages()V

    .line 615
    return-void
.end method

.method public declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 2704
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2705
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2707
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2708
    monitor-exit p0

    return-void

    .line 2704
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected expandRecipientsList()V
    .locals 0

    .prologue
    .line 2840
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    return-object v0
.end method

.method public getAllInputRecipientCount()I
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getAllInputRecipientCount()I

    move-result v0

    .line 1419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComposer()Lcom/sonyericsson/conversations/ui/Composer;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    return-object v0
.end method

.method public getConvListFragmentForTest()Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    return-object v0
.end method

.method public getInvalidRecipients()Ljava/util/ArrayList;
    .locals 1
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
    .line 1408
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    .line 1411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsgListFragmentForTest()Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .locals 1

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    return-object v0
.end method

.method public hideInputMethod(Z)V
    .locals 4
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 2673
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2676
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2677
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2678
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2679
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2683
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public hideInputMethodandClearTextFocus(Z)V
    .locals 2
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 2686
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 2687
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2688
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2689
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2691
    :cond_0
    return-void
.end method

.method public initActionBar()V
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->initActionBar()V

    .line 1312
    :cond_0
    return-void
.end method

.method protected initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 2
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1116
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    .line 1119
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1121
    :cond_1
    return-void
.end method

.method public isConvListContentAreaVisible()Z
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

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

.method public isMsgListContentAreaVisible()Z
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

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

.method public isMsgListFragmentFocusedOnLastItem()Z
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isFocusedOnLastItem()Z

    move-result v0

    .line 1433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMsgListFragmentVisible()Z
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchBoxVisible()Z
    .locals 1

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isSearchBoxVisible()Z

    move-result v0

    .line 2859
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToFieldFragmentVisible()Z
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionBarHomePressed()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v8, 0x0

    .line 1335
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    if-nez v0, :cond_1

    .line 1336
    invoke-virtual {p0, v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 1338
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSaveDraftDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->backToMainActivity()V

    .line 1368
    :cond_1
    :goto_0
    return-void

    .line 1344
    :cond_2
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 1351
    .local v6, "savePositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$7;

    invoke-direct {v10, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$7;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 1358
    .local v10, "saveNeutralClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v3, 0x1010355

    const v4, 0x7f070072

    const v5, 0x7f070074

    const v7, 0x7f070076

    const v9, 0x7f070075

    move-object v0, p0

    move-object v11, v8

    move-object v12, v8

    move-object v13, v8

    invoke-virtual/range {v0 .. v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

.method public onAllMessagesDeleted()V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSearchModeInConversationList()V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method public onCloseSearchModeInMessageList()V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2755
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 2756
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->collapseRecipientsList()V

    .line 2757
    return-void
.end method

.method public onConvListLoadFinished()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method public onConversationDeleted()V
    .locals 0

    .prologue
    .line 2621
    return-void
.end method

.method public onConversationOpen(J)V
    .locals 2
    .param p1, "threadId"    # J

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 610
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 482
    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragments()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->reStartSelfIfNeed(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleIntent(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public onCurrentConversationDeleted(J)V
    .locals 0
    .param p1, "threadId"    # J

    .prologue
    .line 668
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 572
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveStatusForRestore()V

    .line 578
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageReadIndicators(JZ)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->setKeyboardVisibilityListener(Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;)V

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 588
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 593
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    .line 596
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->unregister(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 597
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->cancelAllTasks()V

    .line 598
    return-void

    .line 574
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft()V

    goto :goto_0
.end method

.method public onEndSearchMode()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 706
    :cond_0
    return-void
.end method

.method public onFinishDeleteConversationsActionMode(Z)V
    .locals 0
    .param p1, "isDeleteTaskTriggered"    # Z

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 664
    return-void
.end method

.method public onFinishDeleteMessagesActionMode()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->hasValidRecipients()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 718
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 719
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    goto :goto_0
.end method

.method public onMsgListLoadFinished()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 727
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    if-eqz v0, :cond_1

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendAnimation()V

    .line 733
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setSendingMessageKey(J)V

    .line 734
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 738
    :cond_1
    monitor-exit v1

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isSearchBoxVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onEndSearchMode()V

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->finishUpToFieldFragment()V

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Z)J

    .line 463
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragments()V

    .line 464
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissSaveContactDialog()V

    .line 466
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->collapseRecipientsList()V

    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleIntent(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 471
    :cond_2
    return-void
.end method

.method public onOpenSearchMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->setInSearchMode(ZLjava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->changeToSearchMode(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 518
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v0, :cond_1

    .line 521
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftAsync(Z)J

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->clear()V

    .line 528
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 529
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 530
    return-void
.end method

.method public onQueryTextSubmit()V
    .locals 0

    .prologue
    .line 709
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->refresh()V

    .line 512
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 513
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 909
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    const-string v0, "ThreadId"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 912
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onSearchRequested()Z

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchViewExpand()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateSearchMode()V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    .line 688
    :cond_1
    return-void
.end method

.method public onStartDeleteConversation()V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->deleteConversation()V

    .line 724
    return-void
.end method

.method public onStartDeleteConversations()V
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 660
    return-void
.end method

.method public onStartDeleteSeveralMessages()V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 678
    return-void
.end method

.method public onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .prologue
    .line 2863
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$memory$LowMemoryManager$OnTrimMemoryLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2870
    :cond_0
    :goto_0
    return-void

    .line 2865
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setDirty(Z)V

    .line 2867
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Z)J

    goto :goto_0

    .line 2863
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected removeFragments()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 784
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 786
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 787
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeDialogFragment()V

    .line 788
    return-void
.end method

.method public saveDraft(ZZ)J
    .locals 11
    .param p1, "popupToast"    # Z
    .param p2, "isAsync"    # Z

    .prologue
    const-wide/16 v9, -0x1

    .line 2068
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 2131
    :cond_0
    :goto_0
    return-wide v9

    .line 2075
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isDefaultSmsPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2082
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    .line 2083
    .local v7, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v9

    .line 2086
    .local v9, "threadId":J
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v1, v9, v10}, Lcom/sonyericsson/conversations/model/Conversation;->threadExists(Landroid/content/Context;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2087
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->resetConversation()V

    .line 2090
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v8

    .line 2091
    .local v8, "originalMessage":Lcom/sonyericsson/conversations/model/Message;
    if-nez v8, :cond_3

    .line 2096
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->resetConversation()V

    .line 2098
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->registerMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 2099
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->clear()V

    goto :goto_0

    .line 2109
    :cond_3
    invoke-direct {p0, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageByRecipient(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 2112
    .local v2, "updatedMessage":Lcom/sonyericsson/conversations/model/Message;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v9

    .line 2115
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getSubject()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->isRecipientsDirty()Z

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Conversation;Ljava/lang/String;ZZ)V

    .line 2117
    .local v0, "draft":Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->registerMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 2119
    if-eqz p2, :cond_4

    .line 2120
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->pushSaveDraftTask(Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;)V

    .line 2125
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->clear()V

    goto :goto_0

    .line 2122
    :cond_4
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->syncSaveDraft(Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;)V

    goto :goto_1
.end method

.method public abstract saveDraft()V
.end method

.method public saveDraftAsync(Z)J
    .locals 2
    .param p1, "popupToast"    # Z

    .prologue
    .line 2046
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public saveDraftSync(Z)J
    .locals 2
    .param p1, "popupToast"    # Z

    .prologue
    .line 2056
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public saveValidRecipients()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    .line 2138
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v9, :cond_1

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2141
    :cond_1
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2142
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getValidRecipients()Ljava/util/ArrayList;

    move-result-object v1

    .line 2146
    .local v1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_3

    const/4 v3, 0x1

    .line 2149
    .local v3, "needUpate":Z
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isRecipientDirty()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v3, :cond_0

    .line 2150
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2151
    .local v7, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v1, :cond_4

    .line 2152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2153
    .local v0, "address":Ljava/lang/String;
    new-instance v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v6, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 2154
    .local v6, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2146
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "needUpate":Z
    .end local v6    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2159
    .restart local v3    # "needUpate":Z
    .restart local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-static {v11, v12, v7}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    goto :goto_0

    .line 2166
    .end local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "needUpate":Z
    .end local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    .line 2167
    .local v4, "originParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    .local v8, "validParticipants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v4, :cond_0

    .line 2170
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    .line 2171
    .local v5, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2172
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2177
    .end local v5    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 2179
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-static {v11, v12, v8}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    goto/16 :goto_0
.end method

.method protected sendMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2246
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isSearchBoxVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2248
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onEndSearchMode()V

    .line 2251
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2253
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 2254
    const v0, 0x7f070008

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    .line 2256
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    .line 2338
    :goto_0
    return-void

    .line 2261
    :cond_2
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 2267
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->onExternalTaskStart()V

    .line 2268
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSendButtonProgressBar()V

    .line 2270
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 2271
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 2273
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$11;

    const-string v1, "Send message"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$11;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected setConvListFragmentVisibility(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 929
    :cond_0
    if-eqz p1, :cond_2

    .line 930
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-nez v0, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setCallback(Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;)V

    .line 935
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 940
    :goto_0
    return-void

    .line 938
    :cond_2
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    goto :goto_0
.end method

.method protected setEditorFragmentVisibility(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "bottom_fragment_editor"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 1783
    :cond_0
    if-eqz p1, :cond_2

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->createEditorFragment(Lcom/sonyericsson/conversations/ui/Composer;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 1786
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setCallback(Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;)V

    .line 1788
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_1

    .line 1789
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setContentListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;)V

    .line 1793
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 1798
    :goto_0
    return-void

    .line 1796
    :cond_2
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    goto :goto_0
.end method

.method protected setMsgListFragmentVisibility(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 1076
    :cond_0
    if-eqz p1, :cond_3

    .line 1077
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v1, :cond_2

    .line 1078
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 1080
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1081
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1082
    const-string v1, "focusmessageuri"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_1
    const-string v1, "conversation"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1086
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1087
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setCallback(Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;)V

    .line 1091
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 1093
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 1097
    :goto_1
    return-void

    .line 1089
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 1095
    :cond_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    goto :goto_1
.end method

.method public setMsgListUpdateNecessity(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setUpdateFocus(Z)V

    .line 1427
    :cond_0
    return-void
.end method

.method protected setToFieldFragmentVisibility(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-nez v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 1814
    :cond_0
    if-eqz p1, :cond_2

    .line 1815
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-nez v0, :cond_1

    .line 1816
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 1819
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 1824
    :goto_0
    return-void

    .line 1822
    :cond_2
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    goto :goto_0
.end method

.method protected setupFragments()V
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2833
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupToFieldFragment()V

    .line 2834
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupMsgListFragment()V

    .line 2835
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupEditorFragment()V

    .line 2837
    :cond_0
    return-void
.end method

.method public showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 13
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "iconAttribute"    # I
    .param p4, "messageId"    # I
    .param p5, "positiveBtnResId"    # I
    .param p6, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "negativeBtnResId"    # I
    .param p8, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p9, "neutralBtnResId"    # I
    .param p10, "neutralButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p11, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p12, "adapter"    # Landroid/widget/ListAdapter;
    .param p13, "adpterListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p14, "bCancelable"    # Z

    .prologue
    .line 2654
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object v10, p1

    move v11, p2

    move/from16 v12, p3

    invoke-static/range {v1 .. v12}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;II)V

    .line 2659
    return-void
.end method

.method public declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 2694
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2698
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2699
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    :cond_1
    monitor-exit p0

    return-void

    .line 2694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2633
    return-void
.end method

.method protected showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2637
    return-void
.end method

.method protected showToastInUiThread(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2629
    return-void
.end method

.method public updateActionBar()V
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 1306
    :cond_0
    return-void
.end method

.method public updateComposerFromDraftStack(Z)V
    .locals 3
    .param p1, "forceLoadDraft"    # Z

    .prologue
    .line 1758
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1760
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1761
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->loadDraft()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :cond_1
    :goto_0
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "ConversationActivityUiController"

    const-string v2, "updateComposerFromDraftStack: loadDraft() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateConversationBeforeSendMessage()V
    .locals 1

    .prologue
    .line 2510
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveValidRecipients()V

    .line 2521
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isActionbarHideWhenKeypadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 2524
    :cond_0
    return-void
.end method

.method public updateEditorFragment()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2022
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v2, :cond_0

    .line 2023
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setShowEmptySubject(Z)V

    .line 2024
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 2025
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2027
    .local v0, "isInLandscape":Z
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 2028
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->requestKeyboardFocus()V

    .line 2031
    .end local v0    # "isInLandscape":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2025
    goto :goto_0
.end method

.method protected updateMessageReadIndicators(JZ)V
    .locals 6
    .param p1, "updateThreadId"    # J
    .param p3, "updateOnlyOutgoing"    # Z

    .prologue
    .line 1908
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    if-nez v0, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return-void

    .line 1912
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;

    const-string v2, "updateMessageReadIndicators"

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;JZ)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateMsgListFragment()V
    .locals 3

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/model/Conversation;Z)V

    .line 2035
    return-void
.end method
