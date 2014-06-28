.class public Lcom/android/phone/SomcCallerInfo;
.super Lcom/android/internal/telephony/CallerInfo;
.source "SomcCallerInfo.java"


# instance fields
.field public cachedContactNumberIcon:Landroid/graphics/Bitmap;

.field public cityIdInfo:Ljava/lang/String;

.field public landOwnerInfo:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public queryCityIdTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public queryLandOwnerTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public redirectingName:Ljava/lang/String;

.field public redirectingNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .param p1, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 65
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 66
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 67
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 68
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 70
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 71
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 72
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 73
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 74
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 75
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 76
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 77
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iput-boolean v2, p0, Lcom/android/phone/SomcCallerInfo;->mIsVoiceMail:Z

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iput-boolean v2, p0, Lcom/android/phone/SomcCallerInfo;->mIsEmergency:Z

    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->mIsVoiceMail:Z

    return v0
.end method
