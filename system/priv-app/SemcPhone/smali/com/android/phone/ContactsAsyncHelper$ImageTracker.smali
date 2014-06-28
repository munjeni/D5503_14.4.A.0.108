.class public Lcom/android/phone/ContactsAsyncHelper$ImageTracker;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageTracker"
.end annotation


# instance fields
.field private displayMode:I

.field private mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 146
    return-void
.end method


# virtual methods
.method public getPhotoUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v1, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 175
    :goto_0
    return v2

    .line 165
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x1

    .line 172
    .local v1, "runQuery":Z
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2

    .line 173
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 175
    goto :goto_0
.end method

.method public setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 183
    return-void
.end method

.method public setPhotoState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 203
    return-void
.end method
