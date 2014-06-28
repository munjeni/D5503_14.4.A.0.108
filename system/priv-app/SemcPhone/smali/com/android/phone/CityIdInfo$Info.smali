.class Lcom/android/phone/CityIdInfo$Info;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CityIdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# instance fields
.field private final mCityName:Ljava/lang/String;

.field private final mCountryName:Ljava/lang/String;

.field private final mIsNanp:Z

.field private final mStateAbrv:Ljava/lang/String;

.field private final mStateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;
    .param p2, "stateName"    # Ljava/lang/String;
    .param p3, "stateAbrv"    # Ljava/lang/String;
    .param p4, "countryName"    # Ljava/lang/String;
    .param p5, "isNanp"    # Z

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/phone/CityIdInfo$Info;->mCityName:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/android/phone/CityIdInfo$Info;->mStateName:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/android/phone/CityIdInfo$Info;->mStateAbrv:Ljava/lang/String;

    .line 164
    iput-object p4, p0, Lcom/android/phone/CityIdInfo$Info;->mCountryName:Ljava/lang/String;

    .line 165
    iput-boolean p5, p0, Lcom/android/phone/CityIdInfo$Info;->mIsNanp:Z

    .line 166
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "displayName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/phone/CityIdInfo$Info;->mIsNanp:Z

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/android/phone/CityIdInfo$Info;->mCityName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CityIdInfo$Info;->mStateName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/phone/CityIdInfo$Info;->mStateName:Ljava/lang/String;

    .line 180
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 181
    const-string v0, ""

    .line 184
    :cond_1
    return-object v0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CityIdInfo$Info;->mCityName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CityIdInfo$Info;->mStateAbrv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/CityIdInfo$Info;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CityIdInfo$Info;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CityIdInfo$Info;->mCountryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/phone/CityIdInfo$Info;->mCountryName:Ljava/lang/String;

    goto :goto_0
.end method
