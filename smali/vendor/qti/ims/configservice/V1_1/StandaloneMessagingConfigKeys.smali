.class public final Lvendor/qti/ims/configservice/V1_1/StandaloneMessagingConfigKeys;
.super Ljava/lang/Object;
.source "StandaloneMessagingConfigKeys.java"


# static fields
.field public static final APP_ID_KEY:I = 0x13a

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

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 121
    .local v1, "flipped":I
    and-int/lit16 v2, p0, 0x12c

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_0

    .line 122
    const-string v2, "DEFAULT_SMS_APP_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit16 v1, v1, 0x12c

    .line 125
    :cond_0
    and-int/lit16 v2, p0, 0x12d

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_1

    .line 126
    const-string v2, "DEFAULT_VVM_APP_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit16 v1, v1, 0x12d

    .line 129
    :cond_1
    and-int/lit16 v2, p0, 0x12e

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_2

    .line 130
    const-string v2, "AUTO_CONFIG_USER_AGENT_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit16 v1, v1, 0x12e

    .line 133
    :cond_2
    and-int/lit16 v2, p0, 0x12f

    const/16 v3, 0x12f

    if-ne v2, v3, :cond_3

    .line 134
    const-string v2, "XDM_CLIENT_USER_AGENT_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit16 v1, v1, 0x12f

    .line 137
    :cond_3
    and-int/lit16 v2, p0, 0x130

    const/16 v3, 0x130

    if-ne v2, v3, :cond_4

    .line 138
    const-string v2, "CLIENT_VENDOR_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit16 v1, v1, 0x130

    .line 141
    :cond_4
    and-int/lit16 v2, p0, 0x131

    const/16 v3, 0x131

    if-ne v2, v3, :cond_5

    .line 142
    const-string v2, "CLIENT_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit16 v1, v1, 0x131

    .line 145
    :cond_5
    and-int/lit16 v2, p0, 0x132

    const/16 v3, 0x132

    if-ne v2, v3, :cond_6

    .line 146
    const-string v2, "TERMINAL_VENDOR_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit16 v1, v1, 0x132

    .line 149
    :cond_6
    and-int/lit16 v2, p0, 0x133

    const/16 v3, 0x133

    if-ne v2, v3, :cond_7

    .line 150
    const-string v2, "TERMINAL_MODEL_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit16 v1, v1, 0x133

    .line 153
    :cond_7
    and-int/lit16 v2, p0, 0x134

    const/16 v3, 0x134

    if-ne v2, v3, :cond_8

    .line 154
    const-string v2, "TERMINAL_SW_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit16 v1, v1, 0x134

    .line 157
    :cond_8
    and-int/lit16 v2, p0, 0x135

    const/16 v3, 0x135

    if-ne v2, v3, :cond_9

    .line 158
    const-string v2, "RCS_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit16 v1, v1, 0x135

    .line 161
    :cond_9
    and-int/lit16 v2, p0, 0x136

    const/16 v3, 0x136

    if-ne v2, v3, :cond_a

    .line 162
    const-string v2, "PROVISIONING_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit16 v1, v1, 0x136

    .line 165
    :cond_a
    and-int/lit16 v2, p0, 0x137

    const/16 v3, 0x137

    if-ne v2, v3, :cond_b

    .line 166
    const-string v2, "FRIENDLY_DEVICE_NAME_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit16 v1, v1, 0x137

    .line 169
    :cond_b
    and-int/lit16 v2, p0, 0x138

    const/16 v3, 0x138

    if-ne v2, v3, :cond_c

    .line 170
    const-string v2, "RCS_PROFILE_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit16 v1, v1, 0x138

    .line 173
    :cond_c
    and-int/lit16 v2, p0, 0x139

    const/16 v3, 0x139

    if-ne v2, v3, :cond_d

    .line 174
    const-string v2, "BOT_VERSION_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit16 v1, v1, 0x139

    .line 177
    :cond_d
    and-int/lit16 v2, p0, 0x13a

    const/16 v3, 0x13a

    if-ne v2, v3, :cond_e

    .line 178
    const-string v2, "APP_ID_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit16 v1, v1, 0x13a

    .line 181
    :cond_e
    if-eq p0, v1, :cond_f

    .line 182
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

    .line 184
    :cond_f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 70
    const/16 v0, 0x12c

    if-ne p0, v0, :cond_0

    .line 71
    const-string v0, "DEFAULT_SMS_APP_KEY"

    return-object v0

    .line 73
    :cond_0
    const/16 v0, 0x12d

    if-ne p0, v0, :cond_1

    .line 74
    const-string v0, "DEFAULT_VVM_APP_KEY"

    return-object v0

    .line 76
    :cond_1
    const/16 v0, 0x12e

    if-ne p0, v0, :cond_2

    .line 77
    const-string v0, "AUTO_CONFIG_USER_AGENT_KEY"

    return-object v0

    .line 79
    :cond_2
    const/16 v0, 0x12f

    if-ne p0, v0, :cond_3

    .line 80
    const-string v0, "XDM_CLIENT_USER_AGENT_KEY"

    return-object v0

    .line 82
    :cond_3
    const/16 v0, 0x130

    if-ne p0, v0, :cond_4

    .line 83
    const-string v0, "CLIENT_VENDOR_KEY"

    return-object v0

    .line 85
    :cond_4
    const/16 v0, 0x131

    if-ne p0, v0, :cond_5

    .line 86
    const-string v0, "CLIENT_VERSION_KEY"

    return-object v0

    .line 88
    :cond_5
    const/16 v0, 0x132

    if-ne p0, v0, :cond_6

    .line 89
    const-string v0, "TERMINAL_VENDOR_KEY"

    return-object v0

    .line 91
    :cond_6
    const/16 v0, 0x133

    if-ne p0, v0, :cond_7

    .line 92
    const-string v0, "TERMINAL_MODEL_KEY"

    return-object v0

    .line 94
    :cond_7
    const/16 v0, 0x134

    if-ne p0, v0, :cond_8

    .line 95
    const-string v0, "TERMINAL_SW_VERSION_KEY"

    return-object v0

    .line 97
    :cond_8
    const/16 v0, 0x135

    if-ne p0, v0, :cond_9

    .line 98
    const-string v0, "RCS_VERSION_KEY"

    return-object v0

    .line 100
    :cond_9
    const/16 v0, 0x136

    if-ne p0, v0, :cond_a

    .line 101
    const-string v0, "PROVISIONING_VERSION_KEY"

    return-object v0

    .line 103
    :cond_a
    const/16 v0, 0x137

    if-ne p0, v0, :cond_b

    .line 104
    const-string v0, "FRIENDLY_DEVICE_NAME_KEY"

    return-object v0

    .line 106
    :cond_b
    const/16 v0, 0x138

    if-ne p0, v0, :cond_c

    .line 107
    const-string v0, "RCS_PROFILE_KEY"

    return-object v0

    .line 109
    :cond_c
    const/16 v0, 0x139

    if-ne p0, v0, :cond_d

    .line 110
    const-string v0, "BOT_VERSION_KEY"

    return-object v0

    .line 112
    :cond_d
    const/16 v0, 0x13a

    if-ne p0, v0, :cond_e

    .line 113
    const-string v0, "APP_ID_KEY"

    return-object v0

    .line 115
    :cond_e
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
