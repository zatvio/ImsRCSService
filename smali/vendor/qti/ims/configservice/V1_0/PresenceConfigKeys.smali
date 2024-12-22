.class public final Lvendor/qti/ims/configservice/V1_0/PresenceConfigKeys;
.super Ljava/lang/Object;
.source "PresenceConfigKeys.java"


# static fields
.field public static final AVAILABILITY_CACHE_EXPIRY_KEY:I = 0x6a

.field public static final CAPABILITES_CACHE_EXPIRY_KEY:I = 0x69

.field public static final CAPABILITY_DISCOVERY_ENABLED_KEY:I = 0x6d

.field public static final CAPABILITY_POLL_INTERVAL_KEY:I = 0x6b

.field public static final GZIP_ENABLED_KEY:I = 0x6e

.field public static final LIST_SUBSCRIPTION_EXPIRY_KEY:I = 0x68

.field public static final MAX_ENTIES_IN_LIST_SUBSCRIBE_KEY:I = 0x6c

.field public static final PUBLISH_ERROR_RECOVERY_TIMER_KEY:I = 0x67

.field public static final PUBLISH_EXTENDED_TIMER_KEY:I = 0x65

.field public static final PUBLISH_SRC_THROTTLE_TIMER_KEY:I = 0x66

.field public static final PUBLISH_TIMER_KEY:I = 0x64

.field public static final USER_AGENT_KEY:I = 0x6f


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

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 96
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 97
    const-string v2, "PUBLISH_TIMER_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x64

    .line 100
    :cond_0
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 101
    const-string v2, "PUBLISH_EXTENDED_TIMER_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x65

    .line 104
    :cond_1
    and-int/lit8 v2, p0, 0x66

    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    .line 105
    const-string v2, "PUBLISH_SRC_THROTTLE_TIMER_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x66

    .line 108
    :cond_2
    and-int/lit8 v2, p0, 0x67

    const/16 v3, 0x67

    if-ne v2, v3, :cond_3

    .line 109
    const-string v2, "PUBLISH_ERROR_RECOVERY_TIMER_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x67

    .line 112
    :cond_3
    and-int/lit8 v2, p0, 0x68

    const/16 v3, 0x68

    if-ne v2, v3, :cond_4

    .line 113
    const-string v2, "LIST_SUBSCRIPTION_EXPIRY_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x68

    .line 116
    :cond_4
    and-int/lit8 v2, p0, 0x69

    const/16 v3, 0x69

    if-ne v2, v3, :cond_5

    .line 117
    const-string v2, "CAPABILITES_CACHE_EXPIRY_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x69

    .line 120
    :cond_5
    and-int/lit8 v2, p0, 0x6a

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_6

    .line 121
    const-string v2, "AVAILABILITY_CACHE_EXPIRY_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x6a

    .line 124
    :cond_6
    and-int/lit8 v2, p0, 0x6b

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_7

    .line 125
    const-string v2, "CAPABILITY_POLL_INTERVAL_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v1, v1, 0x6b

    .line 128
    :cond_7
    and-int/lit8 v2, p0, 0x6c

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_8

    .line 129
    const-string v2, "MAX_ENTIES_IN_LIST_SUBSCRIBE_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v1, v1, 0x6c

    .line 132
    :cond_8
    and-int/lit8 v2, p0, 0x6d

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_9

    .line 133
    const-string v2, "CAPABILITY_DISCOVERY_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v1, v1, 0x6d

    .line 136
    :cond_9
    and-int/lit8 v2, p0, 0x6e

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_a

    .line 137
    const-string v2, "GZIP_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v1, v1, 0x6e

    .line 140
    :cond_a
    and-int/lit8 v2, p0, 0x6f

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_b

    .line 141
    const-string v2, "USER_AGENT_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v1, v1, 0x6f

    .line 144
    :cond_b
    if-eq p0, v1, :cond_c

    .line 145
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

    .line 147
    :cond_c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 54
    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    .line 55
    const-string v0, "PUBLISH_TIMER_KEY"

    return-object v0

    .line 57
    :cond_0
    const/16 v0, 0x65

    if-ne p0, v0, :cond_1

    .line 58
    const-string v0, "PUBLISH_EXTENDED_TIMER_KEY"

    return-object v0

    .line 60
    :cond_1
    const/16 v0, 0x66

    if-ne p0, v0, :cond_2

    .line 61
    const-string v0, "PUBLISH_SRC_THROTTLE_TIMER_KEY"

    return-object v0

    .line 63
    :cond_2
    const/16 v0, 0x67

    if-ne p0, v0, :cond_3

    .line 64
    const-string v0, "PUBLISH_ERROR_RECOVERY_TIMER_KEY"

    return-object v0

    .line 66
    :cond_3
    const/16 v0, 0x68

    if-ne p0, v0, :cond_4

    .line 67
    const-string v0, "LIST_SUBSCRIPTION_EXPIRY_KEY"

    return-object v0

    .line 69
    :cond_4
    const/16 v0, 0x69

    if-ne p0, v0, :cond_5

    .line 70
    const-string v0, "CAPABILITES_CACHE_EXPIRY_KEY"

    return-object v0

    .line 72
    :cond_5
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_6

    .line 73
    const-string v0, "AVAILABILITY_CACHE_EXPIRY_KEY"

    return-object v0

    .line 75
    :cond_6
    const/16 v0, 0x6b

    if-ne p0, v0, :cond_7

    .line 76
    const-string v0, "CAPABILITY_POLL_INTERVAL_KEY"

    return-object v0

    .line 78
    :cond_7
    const/16 v0, 0x6c

    if-ne p0, v0, :cond_8

    .line 79
    const-string v0, "MAX_ENTIES_IN_LIST_SUBSCRIBE_KEY"

    return-object v0

    .line 81
    :cond_8
    const/16 v0, 0x6d

    if-ne p0, v0, :cond_9

    .line 82
    const-string v0, "CAPABILITY_DISCOVERY_ENABLED_KEY"

    return-object v0

    .line 84
    :cond_9
    const/16 v0, 0x6e

    if-ne p0, v0, :cond_a

    .line 85
    const-string v0, "GZIP_ENABLED_KEY"

    return-object v0

    .line 87
    :cond_a
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_b

    .line 88
    const-string v0, "USER_AGENT_KEY"

    return-object v0

    .line 90
    :cond_b
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
