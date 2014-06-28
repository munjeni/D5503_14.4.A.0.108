.class public Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
.super Ljava/lang/Object;
.source "FavoriteUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FavoriteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

.field private mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

.field private mFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem$1;

    invoke-direct {v0}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    .line 176
    new-instance v0, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILcom/sonyericsson/fmradio/station/Favorite;)V
    .locals 0
    .param p1, "ff"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .param p2, "frequency"    # I
    .param p3, "favorite"    # Lcom/sonyericsson/fmradio/station/Favorite;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p2, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    .line 127
    iput-object p3, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 129
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const v0, 0x7f050022

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavorite()Lcom/sonyericsson/fmradio/station/Favorite;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    return-object v0
.end method

.method public getFormatter()Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->mFavorite:Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return-void
.end method
