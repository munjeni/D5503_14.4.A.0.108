.class public Lcom/sonyericsson/conversations/util/AddressUtil;
.super Ljava/lang/Object;
.source "AddressUtil.java"


# static fields
.field private static final LTR_EMBEDDING:Ljava/lang/String; = "\u202a"

.field private static final POP_DIRECTIONAL_FORMATTING:Ljava/lang/String; = "\u202c"

.field private static final TAG:Ljava/lang/String; = "AddressUtil"

.field private static sNeedFormat:Z

.field private static sPattern:Ljava/util/regex/Pattern;

.field private static sPatternContent:Ljava/lang/String;

.field private static sReplacement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    .line 30
    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p0, :cond_0

    .end local p0    # "number":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "number":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static formatSmsOriginalAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originalAddress"    # Ljava/lang/String;

    .prologue
    .line 40
    move-object v1, p0

    .line 41
    .local v1, "ret":Ljava/lang/String;
    sget-boolean v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    .line 42
    invoke-static {}, Lcom/sonyericsson/conversations/util/AddressUtil;->init()V

    .line 45
    :cond_0
    sget-boolean v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    .line 46
    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 47
    .local v0, "m":Ljava/util/regex/Matcher;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    sget-object v3, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    return-object v1
.end method

.method private static init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsOAPattern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsOAReplacement()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    .line 62
    sget-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v0, "ex":Ljava/util/regex/PatternSyntaxException;
    :goto_0
    return-void

    .line 65
    .end local v0    # "ex":Ljava/util/regex/PatternSyntaxException;
    :catch_0
    move-exception v0

    .line 66
    .restart local v0    # "ex":Ljava/util/regex/PatternSyntaxException;
    const-string v1, "AddressUtil"

    const-string v2, "Pattern compile failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sput-boolean v3, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    goto :goto_0

    .line 71
    .end local v0    # "ex":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    sput-boolean v3, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    goto :goto_0
.end method

.method public static isValidAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 90
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 85
    .end local v0    # "retVal":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "retVal":Z
    goto :goto_0
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lcom/sonyericsson/conversations/util/ConversationPatterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/util/ConversationPatterns;->PHONE_INVALID_CHARACTERS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
