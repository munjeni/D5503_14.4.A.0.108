.class public Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;
.super Ljava/lang/Object;
.source "WhitelistGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIconUri:Ljava/lang/String;

.field private mInfoIntentCls:Ljava/lang/String;

.field private mInfoIntentPkg:Ljava/lang/String;

.field private mLabelUri:Ljava/lang/String;

.field private mSettingIntentCls:Ljava/lang/String;

.field private mSettingIntentPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo$1;

    invoke-direct {v0}, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo$1;-><init>()V

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mLabelUri:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mIconUri:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentPkg:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentCls:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentPkg:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentCls:Ljava/lang/String;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "labelURI"    # Ljava/lang/String;
    .param p2, "iconUri"    # Ljava/lang/String;
    .param p3, "settingIntentPkg"    # Ljava/lang/String;
    .param p4, "settingIntentCls"    # Ljava/lang/String;
    .param p5, "infoIntentPkg"    # Ljava/lang/String;
    .param p6, "infoIntentCls"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mLabelUri:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mIconUri:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentPkg:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentCls:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentPkg:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentCls:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoIntentCls()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentCls:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoIntentPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mLabelUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingIntentCls()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentCls:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingIntentPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentPkg:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mLabelUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mIconUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mSettingIntentCls:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGroupInfo;->mInfoIntentCls:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
