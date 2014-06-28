.class public Lcom/sonyericsson/conversations/ui/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field public static final CONVERSATION_ADDRESSES:Ljava/lang/String; = "conversation_addresses"

.field private static final HAS_TAB:Ljava/lang/String; = "has_tab"

.field public static final LOCATION_ACTIVITY_WITH_LIVE_KEY:Ljava/lang/String; = "com.sonyericsson.conversations.location.ui.LocationActivity"

.field public static final LOCATION_ACTIVITY_WITH_TEST_KEY:Ljava/lang/String; = "com.sonyericsson.conversations.location.ui.LocationEditActivity"

.field public static final LOCATION_PACKAGE:Ljava/lang/String; = "com.sonyericsson.conversations"

.field private static final NOTES_PICKER_INTENT_ACTION:Ljava/lang/String; = "com.sonymobile.notes.PICK_NOTE"

.field private static final PICK_CONVERSATIONS_TARGET_ACTION:Ljava/lang/String; = "com.sonyericsson.contacts.PICK_CONVERSATIONS_TARGET"

.field private static final PICK_MULTI_CONTACTS_KEY:Ljava/lang/String; = "isPickMultiContacts"

.field private static final PWS_CLEAR_ALERTLIST_ACTION:Ljava/lang/String; = "com.sonymobile.pws.CLEAR_ALERTLIST"

.field private static final PWS_OPEN_ALERTLIST_ACTION:Ljava/lang/String; = "com.sonymobile.pws.OPEN_ALERTLIST"

.field private static final SKETCH_INTENT_ACTION:Ljava/lang/String; = "com.sonymobile.sketch.CREATE_SKETCH_URI"

.field private static sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/sonyericsson/conversations/ui/IntentFactory;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/IntentFactory;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/IntentFactory;->sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/conversations/ui/IntentFactory;->sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;

    return-object v0
.end method

.method public static declared-synchronized injectFactory(Lcom/sonyericsson/conversations/ui/IntentFactory;)V
    .locals 2
    .param p0, "intentFactory"    # Lcom/sonyericsson/conversations/ui/IntentFactory;

    .prologue
    .line 74
    const-class v0, Lcom/sonyericsson/conversations/ui/IntentFactory;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sonyericsson/conversations/ui/IntentFactory;->sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAlertList()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.pws.OPEN_ALERTLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public getAudioPicker(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxBytes"    # J

    .prologue
    .line 147
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "musicPickerIntent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, "chooserIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/content/Intent;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "audio/amr"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.soundrecorder"

    const-string v6, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v4, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v1, v3

    .line 161
    .local v1, "initialIntentsExtra":[Landroid/content/Intent;
    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    return-object v0
.end method

.method public getCameraCapture(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    const-string v1, "addToMediaStore"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    return-object v0
.end method

.method public getClearAlertList()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.pws.CLEAR_ALERTLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public getContactPicker(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "has_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string v1, "isPickMultiContacts"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    return-object v0
.end method

.method public getImagePicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    return-object v0
.end method

.method public getLocationEditor(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->isDevSigned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "com.sonyericsson.conversations"

    const-string v2, "com.sonyericsson.conversations.location.ui.LocationEditActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    return-object v0

    .line 187
    :cond_0
    const-string v1, "com.sonyericsson.conversations"

    const-string v2, "com.sonyericsson.conversations.location.ui.LocationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getNotesPickerIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.notes.PICK_NOTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public getRecipientPicker()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.contacts.PICK_CONVERSATIONS_TARGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mmsEnabled"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    return-object v0
.end method

.method public getSketchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.sketch.CREATE_SKETCH_URI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public getSlideshowEditor(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1, "Context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    return-object v0
.end method

.method public getSlideshowEditor(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .param p1, "Context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 176
    .local p3, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    const-string v1, "conversation_addresses"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 179
    return-object v0
.end method

.method public getVideoCapture(J)Landroid/content/Intent;
    .locals 3
    .param p1, "maxBytes"    # J

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method public getVideoPicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    return-object v0
.end method

.method public resolveIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 87
    .local v5, "resolvedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 90
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 91
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 92
    .local v1, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 93
    .local v4, "resolvedIntent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "resolvedIntent":Landroid/content/Intent;
    :cond_0
    return-object v5
.end method
