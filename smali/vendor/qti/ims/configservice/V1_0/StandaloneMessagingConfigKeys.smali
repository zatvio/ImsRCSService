.class public final Lvendor/qti/ims/configservice/V1_0/StandaloneMessagingConfigKeys;
.super Ljava/lang/Object;
.source "StandaloneMessagingConfigKeys.java"


# static fields
.field public static final AUTO_CONFIG_USER_AGENT_KEY:I = 0x12e

.field public static final BOT_VERSION_KEY:I = 0x139

.field public static final CLIENT_VENDOR_KEY:I = 0x130

.field public static final CLIENT_VERSION_KEY:I = 0x131

.field public static final DEFAULT_SMS_APP_KEY:I = 0x12c

.field public static final DEFAULT_VVM_APP_KEY:I = 0x12d

.field public static final FRIENDLY_DEVICE_NAME_KEY:I = 0x137

.field public static final PROVISIONING_VERSION_KEY:I = 0x136

.field public static final RCS_PROFILE_KEY:I = 0x138

.field public static final RCS_VERSION_KEY:I = 0x135

.field public static final TERMINAL_MODEL_KEY:I = 0x133

.field public static final TERMINAL_SW_VERSION_KEY:I = 0x134

.field public static final TERMINAL_VENDOR_KEY:I = 0x132

.field public static final XDM_CLIENT_USER_AGENT_KEY:I = 0x12f


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

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 110
    .local v1, "flipped":I
    and-int/lit16 v2, p0, 0x12c

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_0

    .line 111
    const-string v2, "DEFAULT_SMS_APP_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit16 v1, v1, 0x12c

    .line 114
    :cond_0
    and-int/lit16 v2, p0, 0x12d

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_1

    .line 115
    const-string v2, "DEFAULT_VVM_APP_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit16 v1, v1, 0x12d

    .line 118
    :cond_1
    and-int/lit16 v2, p0, 0x12e

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_2

    .line 119
    const-string v2, "AUTO_CONFIG_USER_AGENT_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    or-int/lit16 v1, v1, 0x12e

    .line 122
    :cond_2
    and-int/lit16 v2, p0, 0x12f

    const/16 v3, 0x12f

    if-ne v2, v3, :cond_3

    .line 123
    const-string v2, "XDM_CLIENT_USER_AGENT_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit16 v1, v1, 0x12f

    .line 126
    :cond_3
    and-int/lit16 v2, p0, 0x130

    const/16 v3, 0x130

    if-ne v2, v3, :cond_4

    .line 127
    const-string v2, "CLIENT_VENDOR_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    or-int/lit16 v1, v1, 0x130

    .line 130
    :cond_4
    and-int/lit16 v2, p0, 0x131

    const/16 v3, 0x131

    if-ne v2, v3, :cond_5

    .line 131
    const-string v2, "CLIENT_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    or-int/lit16 v1, v1, 0x131

    .line 134
    :cond_5
    and-int/lit16 v2, p0, 0x132

    const/16 v3, 0x132

    if-ne v2, v3, :cond_6

    .line 135
    const-string v2, "TERMINAL_VENDOR_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    or-int/lit16 v1, v1, 0x132

    .line 138
    :cond_6
    and-int/lit16 v2, p0, 0x133

    const/16 v3, 0x133

    if-ne v2, v3, :cond_7

    .line 139
    const-string v2, "TERMINAL_MODEL_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    or-int/lit16 v1, v1, 0x133

    .line 142
    :cond_7
    and-int/lit16 v2, p0, 0x134

    const/16 v3, 0x134

    if-ne v2, v3, :cond_8

    .line 143
    const-string v2, "TERMINAL_SW_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    or-int/lit16 v1, v1, 0x134

    .line 146
    :cond_8
    and-int/lit16 v2, p0, 0x135

    const/16 v3, 0x135

    if-ne v2, v3, :cond_9

    .line 147
    const-string v2, "RCS_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    or-int/lit16 v1, v1, 0x135

    .line 150
    :cond_9
    and-int/lit16 v2, p0, 0x136

    const/16 v3, 0x136

    if-ne v2, v3, :cond_a

    .line 151
    const-string v2, "PROVISIONING_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    or-int/lit16 v1, v1, 0x136

    .line 154
    :cond_a
    and-int/lit16 v2, p0, 0x137

    const/16 v3, 0x137

    if-ne v2, v3, :cond_b

    .line 155
    const-string v2, "FRIENDLY_DEVICE_NAME_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    or-int/lit16 v1, v1, 0x137

    .line 158
    :cond_b
    and-int/lit16 v2, p0, 0x138

    const/16 v3, 0x138

    if-ne v2, v3, :cond_c

    .line 159
    const-string v2, "RCS_PROFILE_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    or-int/lit16 v1, v1, 0x138

    .line 162
    :cond_c
    and-int/lit16 v2, p0, 0x139

    const/16 v3, 0x139

    if-ne v2, v3, :cond_d

    .line 163
    const-string v2, "BOT_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    or-int/lit16 v1, v1, 0x139

    .line 166
    :cond_d
    if-eq p0, v1, :cond_e

    .line 167
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

    .line 169
    :cond_e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 62
    const/16 v0, 0x12c

    if-ne p0, v0, :cond_0

    .line 63
    const-string v0, "DEFAULT_SMS_APP_KEY"

    return-object v0

    .line 65
    :cond_0
    const/16 v0, 0x12d

    if-ne p0, v0, :cond_1

    .line 66
    const-string v0, "DEFAULT_VVM_APP_KEY"

    return-object v0

    .line 68
    :cond_1
    const/16 v0, 0x12e

    if-ne p0, v0, :cond_2

    .line 69
    const-string v0, "AUTO_CONFIG_USER_AGENT_KEY"

    return-object v0

    .line 71
    :cond_2
    const/16 v0, 0x12f

    if-ne p0, v0, :cond_3

    .line 72
    const-string v0, "XDM_CLIENT_USER_AGENT_KEY"

    return-object v0

    .line 74
    :cond_3
    const/16 v0, 0x130

    if-ne p0, v0, :cond_4

    .line 75
    const-string v0, "CLIENT_VENDOR_KEY"

    return-object v0

    .line 77
    :cond_4
    const/16 v0, 0x131

    if-ne p0, v0, :cond_5

    .line 78
    const-string v0, "CLIENT_VERSION_KEY"

    return-object v0

    .line 80
    :cond_5
    const/16 v0, 0x132

    if-ne p0, v0, :cond_6

    .line 81
    const-string v0, "TERMINAL_VENDOR_KEY"

    return-object v0

    .line 83
    :cond_6
    const/16 v0, 0x133

    if-ne p0, v0, :cond_7

    .line 84
    const-string v0, "TERMINAL_MODEL_KEY"

    return-object v0

    .line 86
    :cond_7
    const/16 v0, 0x134

    if-ne p0, v0, :cond_8

    .line 87
    const-string v0, "TERMINAL_SW_VERSION_KEY"

    return-object v0

    .line 89
    :cond_8
    const/16 v0, 0x135

    if-ne p0, v0, :cond_9

    .line 90
    const-string v0, "RCS_VERSION_KEY"

    return-object v0

    .line 92
    :cond_9
    const/16 v0, 0x136

    if-ne p0, v0, :cond_a

    .line 93
    const-string v0, "PROVISIONING_VERSION_KEY"

    return-object v0

    .line 95
    :cond_a
    const/16 v0, 0x137

    if-ne p0, v0, :cond_b

    .line 96
    const-string v0, "FRIENDLY_DEVICE_NAME_KEY"

    return-object v0

    .line 98
    :cond_b
    const/16 v0, 0x138

    if-ne p0, v0, :cond_c

    .line 99
    const-string v0, "RCS_PROFILE_KEY"

    return-object v0

    .line 101
    :cond_c
    const/16 v0, 0x139

    if-ne p0, v0, :cond_d

    .line 102
    const-string v0, "BOT_VERSION_KEY"

    return-object v0

    .line 104
    :cond_d
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
