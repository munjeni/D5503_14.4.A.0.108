.class public final Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil;
.super Ljava/lang/Object;
.source "MtpDeviceServiceTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDeviceServiceTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MtpHandleUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;
    }
.end annotation


# static fields
.field public static final OBJECT_HANDLE_HIGH_BITS_MASK:I = -0x10000000

.field public static final OBJECT_HANDLE_MASK:I = 0xfffffff

.field public static final OBJECT_HANDLE_TYPE_BITS_OFFSET:I = 0x1c

.field public static final OBJECT_HANDLE_TYPE_CALENDAR:I = 0x2

.field public static final OBJECT_HANDLE_TYPE_CONTACT:I = 0x1

.field public static final OBJECT_HANDLE_TYPE_NORMAL:I = 0x0

.field public static final OBJECT_HANDLE_TYPE_UNKNOWN:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(II)I
    .locals 1
    .param p0, "handle"    # I
    .param p1, "type"    # I

    .prologue
    .line 405
    if-gtz p0, :cond_0

    .line 406
    .end local p0    # "handle":I
    :goto_0
    return p0

    .restart local p0    # "handle":I
    :cond_0
    shl-int/lit8 v0, p1, 0x1c

    or-int/2addr p0, v0

    goto :goto_0
.end method

.method public static parse(I)Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;
    .locals 4
    .param p0, "handle"    # I

    .prologue
    .line 410
    if-gtz p0, :cond_0

    new-instance v2, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p0}, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;-><init>(II)V

    .line 413
    :goto_0
    return-object v2

    .line 411
    :cond_0
    const v2, 0xfffffff

    and-int v1, v2, p0

    .line 412
    .local v1, "value":I
    const/high16 v2, -0x10000000

    and-int/2addr v2, p0

    shr-int/lit8 v0, v2, 0x1c

    .line 413
    .local v0, "type":I
    new-instance v2, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;

    invoke-direct {v2, v0, v1}, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;-><init>(II)V

    goto :goto_0
.end method
