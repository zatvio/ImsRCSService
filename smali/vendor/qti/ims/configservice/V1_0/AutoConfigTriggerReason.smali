.class public final Lvendor/qti/ims/configservice/V1_0/AutoConfigTriggerReason;
.super Ljava/lang/Object;
.source "AutoConfigTriggerReason.java"


# static fields
.field public static final AUTOCONFIG_CLIENT_CHANGE:I = 0x3

.field public static final AUTOCONFIG_DEFAULT:I = 0x0

.field public static final AUTOCONFIG_DEVICE_UPGRADE:I = 0x4

.field public static final AUTOCONFIG_FACTORY_RESET:I = 0x5

.field public static final AUTOCONFIG_INVALID_CREDENTIAL:I = 0x2

.field public static final AUTOCONFIG_INVALID_TOKEN:I = 0x1

.field public static final AUTOCONFIG_UNSPECIFIED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 58
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 59
    const-string v2, "AUTOCONFIG_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    or-int/lit8 v1, v1, -0x1

    .line 62
    :cond_0
    const-string v2, "AUTOCONFIG_DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 64
    const-string v2, "AUTOCONFIG_INVALID_TOKEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v1, v1, 0x1

    .line 67
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 68
    const-string v2, "AUTOCONFIG_INVALID_CREDENTIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v1, v1, 0x2

    .line 71
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 72
    const-string v2, "AUTOCONFIG_CLIENT_CHANGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v1, v1, 0x3

    .line 75
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 76
    const-string v2, "AUTOCONFIG_DEVICE_UPGRADE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/lit8 v1, v1, 0x4

    .line 79
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 80
    const-string v2, "AUTOCONFIG_FACTORY_RESET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    or-int/lit8 v1, v1, 0x5

    .line 83
    :cond_5
    if-eq p0, v1, :cond_6

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_6
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 31
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 32
    const-string v0, "AUTOCONFIG_UNSPECIFIED"

    return-object v0

    .line 34
    :cond_0
    if-nez p0, :cond_1

    .line 35
    const-string v0, "AUTOCONFIG_DEFAULT"

    return-object v0

    .line 37
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 38
    const-string v0, "AUTOCONFIG_INVALID_TOKEN"

    return-object v0

    .line 40
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 41
    const-string v0, "AUTOCONFIG_INVALID_CREDENTIAL"

    return-object v0

    .line 43
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 44
    const-string v0, "AUTOCONFIG_CLIENT_CHANGE"

    return-object v0

    .line 46
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 47
    const-string v0, "AUTOCONFIG_DEVICE_UPGRADE"

    return-object v0

    .line 49
    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    .line 50
    const-string v0, "AUTOCONFIG_FACTORY_RESET"

    return-object v0

    .line 52
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
