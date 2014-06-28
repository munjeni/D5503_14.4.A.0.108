.class public Lcom/sonymobile/superstamina/powersaver/features/Feature;
.super Ljava/lang/Object;
.source "Feature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/superstamina/powersaver/features/Feature;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CHECKBOX_ITEM:I = 0x0

.field public static final TYPE_COUNT:I = 0x2

.field public static final TYPE_NO_CHECKBOX_ITEM:I = 0x1


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mOverriden:Z

.field protected mParam:I

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/Feature$1;

    invoke-direct {v0}, Lcom/sonymobile/superstamina/powersaver/features/Feature$1;-><init>()V

    sput-object v0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mId:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mType:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    .line 151
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonymobile/superstamina/powersaver/features/Feature$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/powersaver/features/Feature$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/Feature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "overriden"    # Z
    .param p4, "param"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mId:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mType:I

    .line 55
    iput-boolean p3, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    .line 56
    iput p4, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParam()I
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    monitor-exit p0

    return v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mType:I

    monitor-exit p0

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isOverriden()Z
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    monitor-exit p0

    return v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOverriden(ZI)V
    .locals 1
    .param p1, "bool"    # Z
    .param p2, "param"    # I

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    .line 100
    iput p2, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
