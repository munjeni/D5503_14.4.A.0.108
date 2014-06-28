.class public interface abstract Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages$ExtendedImageColumns;
.super Ljava/lang/Object;
.source "SemcMediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Images$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedImageColumns"
.end annotation


# static fields
.field public static final FILE_LINK_PATH:Ljava/lang/String; = "filelinkpath"

.field public static final SOMC_FILE_HASH:Ljava/lang/String; = "somchash"

.field public static final SOMC_FILE_TYPE:Ljava/lang/String; = "somctype"

.field public static final SOMC_FILE_TYPE_BURST_COVER:I = 0x2

.field public static final SOMC_FILE_TYPE_BURST_IMAGE:I = 0x81

.field public static final SOMC_FILE_TYPE_MPO:I = 0x80

.field public static final SOMC_FILE_TYPE_MPO_COVER:I = 0x1

.field public static final SOMC_FILE_TYPE_NONE:I = 0x0

.field public static final SOMC_FOLDER_CATEGORY:Ljava/lang/String; = "somccategory"

.field public static final USER_RATING:Ljava/lang/String; = "userrating"
