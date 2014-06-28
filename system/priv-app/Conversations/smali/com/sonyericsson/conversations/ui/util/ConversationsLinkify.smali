.class public Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;
.super Ljava/lang/Object;
.source "ConversationsLinkify.java"


# static fields
.field public static final PHONEFORMAT:Ljava/util/regex/Pattern;

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x3

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(([\\*][\\#])|([\\*]{1,2})|([\\#]{1,2}))?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\. \\*]*[0-9\\#])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->PHONEFORMAT:Ljava/util/regex/Pattern;

    .line 64
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 88
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$2;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$2;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;I)V
    .locals 4
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    .line 50
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 52
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    xor-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 56
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->PHONEFORMAT:Ljava/util/regex/Pattern;

    const-string v1, "tel:"

    sget-object v2, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v3, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_0
.end method
