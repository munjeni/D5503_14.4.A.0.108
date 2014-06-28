.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6488
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6492
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 6491
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 6492
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6460
    packed-switch p0, :pswitch_data_0

    .line 6477
    const v0, 0x10402fa

    :goto_0
    return v0

    .line 6461
    :pswitch_0
    const v0, 0x10402fc

    goto :goto_0

    .line 6462
    :pswitch_1
    const v0, 0x10402fd

    goto :goto_0

    .line 6463
    :pswitch_2
    const v0, 0x10402fe

    goto :goto_0

    .line 6465
    :pswitch_3
    const v0, 0x10402ff

    goto :goto_0

    .line 6466
    :pswitch_4
    const v0, 0x1040300

    goto :goto_0

    .line 6467
    :pswitch_5
    const v0, 0x1040301

    goto :goto_0

    .line 6468
    :pswitch_6
    const v0, 0x1040302

    goto :goto_0

    .line 6469
    :pswitch_7
    const v0, 0x1040303

    goto :goto_0

    .line 6470
    :pswitch_8
    const v0, 0x1040304

    goto :goto_0

    .line 6471
    :pswitch_9
    const v0, 0x1040305

    goto :goto_0

    .line 6473
    :pswitch_a
    const v0, 0x1040306

    goto :goto_0

    .line 6474
    :pswitch_b
    const v0, 0x1040307

    goto :goto_0

    .line 6475
    :pswitch_c
    const v0, 0x1040308

    goto :goto_0

    .line 6476
    :pswitch_d
    const v0, 0x1040309

    goto :goto_0

    .line 6460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
