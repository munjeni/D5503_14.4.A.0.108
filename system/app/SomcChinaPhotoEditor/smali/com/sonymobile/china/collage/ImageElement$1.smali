.class synthetic Lcom/sonymobile/china/collage/ImageElement$1;
.super Ljava/lang/Object;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->values()[Lcom/sonymobile/china/collage/ImageElement$ElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$1;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/china/collage/ImageElement$1;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->RECT:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/china/collage/ImageElement$1;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->OVAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonymobile/china/collage/ImageElement$1;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->CIRCLE:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonymobile/china/collage/ImageElement$1;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->POLYGON:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonymobile/china/collage/ImageElement$1;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->PATH:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
