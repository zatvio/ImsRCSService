.class public final Lvendor/qti/ims/configservice/V1_0/TokenRequestReason;
.super Ljava/lang/Object;
.source "TokenRequestReason.java"


# static fields
.field public static final REASON_CLIENT_CHANGE:I = 0x5

.field public static final REASON_DEVICE_UPGRADE:I = 0x6

.field public static final REASON_DO_NOT_EXIST:I = 0x0

.field public static final REASON_EXPIRED_TOKEN:I = 0x4

.field public static final REASON_FACTORY_RESET:I = 0x7

.field public static final REASON_INVALID_TOKEN:I = 0x3

.field public static final REASON_RCS_TOKEN_DO_NOT_EXIST:I = 0x1

.field public static final REASON_SIM_SWAP:I = 0x2


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

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "flipped":I
    const-string v2, "REASON_DO_NOT_EXIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 70
    const-string v2, "REASON_RCS_TOKEN_DO_NOT_EXIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x1

    .line 73
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 74
    const-string v2, "REASON_SIM_SWAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x2

    .line 77
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 78
    const-string v2, "REASON_INVALID_TOKEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x3

    .line 81
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 82
    const-string v2, "REASON_EXPIRED_TOKEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x4

    .line 85
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 86
    const-string v2, "REASON_CLIENT_CHANGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x5

    .line 89
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 90
    const-string v2, "REASON_DEVICE_UPGRADE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x6

    .line 93
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 94
    const-string v2, "REASON_FACTORY_RESET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x7

    .line 97
    :cond_6
    if-eq p0, v1, :cond_7

    .line 98
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

    .line 100
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 38
    if-nez p0, :cond_0

    .line 39
    const-string v0, "REASON_DO_NOT_EXIST"

    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 42
    const-string v0, "REASON_RCS_TOKEN_DO_NOT_EXIST"

    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 45
    const-string v0, "REASON_SIM_SWAP"

    return-object v0

    .line 47
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 48
    const-string v0, "REASON_INVALID_TOKEN"

    return-object v0

    .line 50
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 51
    const-string v0, "REASON_EXPIRED_TOKEN"

    return-object v0

    .line 53
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 54
    const-string v0, "REASON_CLIENT_CHANGE"

    return-object v0

    .line 56
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 57
    const-string v0, "REASON_DEVICE_UPGRADE"

    return-object v0

    .line 59
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 60
    const-string v0, "REASON_FACTORY_RESET"

    return-object v0

    .line 62
    :cond_7
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
