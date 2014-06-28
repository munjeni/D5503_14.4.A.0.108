.class public Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddMediaListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    }
.end annotation


# static fields
.field public static final ADD_AUDIO:I = 0x4

.field public static final ADD_NOTES:I = 0x6

.field public static final ADD_PICTURE:I = 0x0

.field public static final ADD_SKETCH:I = 0x8

.field public static final ADD_VIDEO:I = 0x2

.field public static final CAPTURE_PHOTO:I = 0x1

.field public static final CAPTURE_VIDEO:I = 0x3

.field public static final CREATE_SLIDESHOW:I = 0x5

.field public static final GET_LOCATION:I = 0x7

.field public static final INVALID_ROW_ID:I = -0x1

.field public static final SEND_CONTACT:I = 0x9


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultContactIcon:Landroid/graphics/drawable/Drawable;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "badge":Landroid/widget/QuickContactBadge;
    invoke-virtual {v0}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    .line 65
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mDefaultContactIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    return-void
.end method

.method private createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    long-to-int v2, p1

    packed-switch v2, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    return-object v1

    .line 246
    :pswitch_0
    const-string v1, "com.sonyericsson.album"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 247
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v3, 0x0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070060

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_1
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f020009

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 252
    :pswitch_1
    const-string v1, "com.sonyericsson.android.camera"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v3, 0x1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f07005e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_2

    move-object v1, v0

    :goto_2
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f020090

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 258
    :pswitch_2
    const-string v1, "com.sonyericsson.video"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 259
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v3, 0x2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070061

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3

    move-object v1, v0

    :goto_3
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f02000d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    .line 264
    :pswitch_3
    new-instance v1, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v2, 0x3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07005f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 268
    :pswitch_4
    const-string v1, "com.sonyericsson.music"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 269
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v3, 0x4

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070062

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_4

    move-object v1, v0

    :goto_4
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f020008

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4

    .line 274
    :pswitch_5
    new-instance v1, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v2, 0x5

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07010e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 278
    :pswitch_6
    new-instance v1, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v2, 0x7

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07010f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 282
    :pswitch_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getSketchApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    new-instance v1, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v2, 0x8

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 290
    :pswitch_8
    const-string v1, "com.sonyericsson.android.socialphonebook"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v3, 0x9

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070111

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_5

    move-object v1, v0

    :goto_5
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mDefaultContactIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 295
    :pswitch_9
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getNotesApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    new-instance v1, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    const-wide/16 v2, 0x6

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070110

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;-><init>(JLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 239
    :goto_0
    return-object v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNotesApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/PackageUtil;->isNotesPickerAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "com.sonymobile.notes"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 319
    :cond_0
    return-object v0
.end method

.method private getSketchApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/PackageUtil;->isSketchAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string v1, "com.sonymobile.sketch"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addAddNotesMenuItem()V
    .locals 3

    .prologue
    .line 227
    const-wide/16 v1, 0x6

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v0

    .line 228
    .local v0, "addNotesMenu":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    return-void
.end method

.method public addAllMenuItems()V
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addImageMenuItems()V

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addVideoMenuItems()V

    .line 161
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addAudioMenuItems()V

    .line 163
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addAddNotesMenuItem()V

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDoodleEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addSketchMenuItems()V

    .line 172
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSlideshowEditorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x5

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->isGoogleMapsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x7

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addSendContactMenuItem()V

    .line 183
    return-void
.end method

.method public addAudioMenuItems()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x4

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public addImageMenuItems()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public addMenuItem(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    .line 143
    .local v1, "item":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    # getter for: Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mId:J
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->access$000(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 152
    :cond_1
    :goto_0
    return v2

    .line 147
    .end local v1    # "item":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    .line 148
    .restart local v1    # "item":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    if-eqz v1, :cond_1

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addSendContactMenuItem()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x9

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addSketchMenuItems()V
    .locals 3

    .prologue
    .line 216
    const-wide/16 v1, 0x8

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v0

    .line 217
    .local v0, "addSketchMenu":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-void
.end method

.method public addVideoMenuItems()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->createAddMediaItem(J)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    # getter for: Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mId:J
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->access$000(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)J

    move-result-wide v0

    .line 88
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    .line 96
    .local v2, "item":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 97
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 98
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 99
    .local v3, "text":Landroid/widget/TextView;
    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 102
    # getter for: Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mLabel:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->access$100(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    # getter for: Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->access$200(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 104
    # getter for: Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->access$200(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    return-object v4
.end method

.method public removeAllMenuItems()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void
.end method

.method public removeMenuItem(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 119
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;

    .line 120
    .local v1, "item":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    # getter for: Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->mId:J
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;->access$000(Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    const/4 v2, 0x1

    .line 125
    .end local v1    # "item":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter$AddMediaItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
