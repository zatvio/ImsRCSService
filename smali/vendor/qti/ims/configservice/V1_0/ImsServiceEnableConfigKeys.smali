.class public final Lvendor/qti/ims/configservice/V1_0/ImsServiceEnableConfigKeys;
.super Ljava/lang/Object;
.source "ImsServiceEnableConfigKeys.java"


# static fields
.field public static final AUTOCONFIG_ENABLED_KEY:I = 0x19c

.field public static final CALL_COMPOSER_ENABLED_KEY:I = 0x1a7

.field public static final CALL_MODE_PREFERENCE_KEY:I = 0x1a3

.field public static final CALL_MODE_PREF_ROAM_ENABLED_KEY:I = 0x19f

.field public static final CALL_MODE_ROAM_PREFERENCE_KEY:I = 0x1a4

.field public static final CARRIER_CONFIG_ENABLED_KEY:I = 0x1a1

.field public static final DAN_ENABLED_KEY:I = 0x198

.field public static final IMS_SERVICE_ENABLED_KEY:I = 0x195

.field public static final MOBILE_DATA_ENABLED_KEY:I = 0x192

.field public static final MWI_ENABLED_KEY:I = 0x19a

.field public static final OPTIONS_ENABLED_KEY:I = 0x1a6

.field public static final PRESENCE_ENABLED_KEY:I = 0x19b

.field public static final RCS_MESSAGING_ENABLED_KEY:I = 0x19e

.field public static final RTT_ENABLED_KEY:I = 0x1a0

.field public static final SERVICE_MASK_BY_NETWORK_ENABLED_KEY:I = 0x1a5

.field public static final SMS_ENABLED_KEY:I = 0x197

.field public static final USSD_ENABLED_KEY:I = 0x199

.field public static final UT_ENABLED_KEY:I = 0x196

.field public static final VIDEOTELEPHONY_ENABLED_KEY:I = 0x191

.field public static final VOLTE_ENABLED_KEY:I = 0x190

.field public static final WIFI_CALLING_ENABLED_KEY:I = 0x193

.field public static final WIFI_CALLING_IN_ROAMING_ENABLED_KEY:I = 0x194

.field public static final WIFI_PROVISIONING_ID_KEY:I = 0x1a2

.field public static final XDM_CLIENT_ENABLED_KEY:I = 0x19d


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

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 180
    .local v1, "flipped":I
    and-int/lit16 v2, p0, 0x190

    const/16 v3, 0x190

    if-ne v2, v3, :cond_0

    .line 181
    const-string v2, "VOLTE_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit16 v1, v1, 0x190

    .line 184
    :cond_0
    and-int/lit16 v2, p0, 0x191

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1

    .line 185
    const-string v2, "VIDEOTELEPHONY_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit16 v1, v1, 0x191

    .line 188
    :cond_1
    and-int/lit16 v2, p0, 0x192

    const/16 v3, 0x192

    if-ne v2, v3, :cond_2

    .line 189
    const-string v2, "MOBILE_DATA_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit16 v1, v1, 0x192

    .line 192
    :cond_2
    and-int/lit16 v2, p0, 0x193

    const/16 v3, 0x193

    if-ne v2, v3, :cond_3

    .line 193
    const-string v2, "WIFI_CALLING_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit16 v1, v1, 0x193

    .line 196
    :cond_3
    and-int/lit16 v2, p0, 0x194

    const/16 v3, 0x194

    if-ne v2, v3, :cond_4

    .line 197
    const-string v2, "WIFI_CALLING_IN_ROAMING_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit16 v1, v1, 0x194

    .line 200
    :cond_4
    and-int/lit16 v2, p0, 0x195

    const/16 v3, 0x195

    if-ne v2, v3, :cond_5

    .line 201
    const-string v2, "IMS_SERVICE_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit16 v1, v1, 0x195

    .line 204
    :cond_5
    and-int/lit16 v2, p0, 0x196

    const/16 v3, 0x196

    if-ne v2, v3, :cond_6

    .line 205
    const-string v2, "UT_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit16 v1, v1, 0x196

    .line 208
    :cond_6
    and-int/lit16 v2, p0, 0x197

    const/16 v3, 0x197

    if-ne v2, v3, :cond_7

    .line 209
    const-string v2, "SMS_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit16 v1, v1, 0x197

    .line 212
    :cond_7
    and-int/lit16 v2, p0, 0x198

    const/16 v3, 0x198

    if-ne v2, v3, :cond_8

    .line 213
    const-string v2, "DAN_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit16 v1, v1, 0x198

    .line 216
    :cond_8
    and-int/lit16 v2, p0, 0x199

    const/16 v3, 0x199

    if-ne v2, v3, :cond_9

    .line 217
    const-string v2, "USSD_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    or-int/lit16 v1, v1, 0x199

    .line 220
    :cond_9
    and-int/lit16 v2, p0, 0x19a

    const/16 v3, 0x19a

    if-ne v2, v3, :cond_a

    .line 221
    const-string v2, "MWI_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    or-int/lit16 v1, v1, 0x19a

    .line 224
    :cond_a
    and-int/lit16 v2, p0, 0x19b

    const/16 v3, 0x19b

    if-ne v2, v3, :cond_b

    .line 225
    const-string v2, "PRESENCE_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    or-int/lit16 v1, v1, 0x19b

    .line 228
    :cond_b
    and-int/lit16 v2, p0, 0x19c

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_c

    .line 229
    const-string v2, "AUTOCONFIG_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    or-int/lit16 v1, v1, 0x19c

    .line 232
    :cond_c
    and-int/lit16 v2, p0, 0x19d

    const/16 v3, 0x19d

    if-ne v2, v3, :cond_d

    .line 233
    const-string v2, "XDM_CLIENT_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    or-int/lit16 v1, v1, 0x19d

    .line 236
    :cond_d
    and-int/lit16 v2, p0, 0x19e

    const/16 v3, 0x19e

    if-ne v2, v3, :cond_e

    .line 237
    const-string v2, "RCS_MESSAGING_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    or-int/lit16 v1, v1, 0x19e

    .line 240
    :cond_e
    and-int/lit16 v2, p0, 0x19f

    const/16 v3, 0x19f

    if-ne v2, v3, :cond_f

    .line 241
    const-string v2, "CALL_MODE_PREF_ROAM_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    or-int/lit16 v1, v1, 0x19f

    .line 244
    :cond_f
    and-int/lit16 v2, p0, 0x1a0

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_10

    .line 245
    const-string v2, "RTT_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    or-int/lit16 v1, v1, 0x1a0

    .line 248
    :cond_10
    and-int/lit16 v2, p0, 0x1a1

    const/16 v3, 0x1a1

    if-ne v2, v3, :cond_11

    .line 249
    const-string v2, "CARRIER_CONFIG_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    or-int/lit16 v1, v1, 0x1a1

    .line 252
    :cond_11
    and-int/lit16 v2, p0, 0x1a2

    const/16 v3, 0x1a2

    if-ne v2, v3, :cond_12

    .line 253
    const-string v2, "WIFI_PROVISIONING_ID_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit16 v1, v1, 0x1a2

    .line 256
    :cond_12
    and-int/lit16 v2, p0, 0x1a3

    const/16 v3, 0x1a3

    if-ne v2, v3, :cond_13

    .line 257
    const-string v2, "CALL_MODE_PREFERENCE_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit16 v1, v1, 0x1a3

    .line 260
    :cond_13
    and-int/lit16 v2, p0, 0x1a4

    const/16 v3, 0x1a4

    if-ne v2, v3, :cond_14

    .line 261
    const-string v2, "CALL_MODE_ROAM_PREFERENCE_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit16 v1, v1, 0x1a4

    .line 264
    :cond_14
    and-int/lit16 v2, p0, 0x1a5

    const/16 v3, 0x1a5

    if-ne v2, v3, :cond_15

    .line 265
    const-string v2, "SERVICE_MASK_BY_NETWORK_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit16 v1, v1, 0x1a5

    .line 268
    :cond_15
    and-int/lit16 v2, p0, 0x1a6

    const/16 v3, 0x1a6

    if-ne v2, v3, :cond_16

    .line 269
    const-string v2, "OPTIONS_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    or-int/lit16 v1, v1, 0x1a6

    .line 272
    :cond_16
    and-int/lit16 v2, p0, 0x1a7

    const/16 v3, 0x1a7

    if-ne v2, v3, :cond_17

    .line 273
    const-string v2, "CALL_COMPOSER_ENABLED_KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    or-int/lit16 v1, v1, 0x1a7

    .line 276
    :cond_17
    if-eq p0, v1, :cond_18

    .line 277
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

    .line 279
    :cond_18
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 102
    const/16 v0, 0x190

    if-ne p0, v0, :cond_0

    .line 103
    const-string v0, "VOLTE_ENABLED_KEY"

    return-object v0

    .line 105
    :cond_0
    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    .line 106
    const-string v0, "VIDEOTELEPHONY_ENABLED_KEY"

    return-object v0

    .line 108
    :cond_1
    const/16 v0, 0x192

    if-ne p0, v0, :cond_2

    .line 109
    const-string v0, "MOBILE_DATA_ENABLED_KEY"

    return-object v0

    .line 111
    :cond_2
    const/16 v0, 0x193

    if-ne p0, v0, :cond_3

    .line 112
    const-string v0, "WIFI_CALLING_ENABLED_KEY"

    return-object v0

    .line 114
    :cond_3
    const/16 v0, 0x194

    if-ne p0, v0, :cond_4

    .line 115
    const-string v0, "WIFI_CALLING_IN_ROAMING_ENABLED_KEY"

    return-object v0

    .line 117
    :cond_4
    const/16 v0, 0x195

    if-ne p0, v0, :cond_5

    .line 118
    const-string v0, "IMS_SERVICE_ENABLED_KEY"

    return-object v0

    .line 120
    :cond_5
    const/16 v0, 0x196

    if-ne p0, v0, :cond_6

    .line 121
    const-string v0, "UT_ENABLED_KEY"

    return-object v0

    .line 123
    :cond_6
    const/16 v0, 0x197

    if-ne p0, v0, :cond_7

    .line 124
    const-string v0, "SMS_ENABLED_KEY"

    return-object v0

    .line 126
    :cond_7
    const/16 v0, 0x198

    if-ne p0, v0, :cond_8

    .line 127
    const-string v0, "DAN_ENABLED_KEY"

    return-object v0

    .line 129
    :cond_8
    const/16 v0, 0x199

    if-ne p0, v0, :cond_9

    .line 130
    const-string v0, "USSD_ENABLED_KEY"

    return-object v0

    .line 132
    :cond_9
    const/16 v0, 0x19a

    if-ne p0, v0, :cond_a

    .line 133
    const-string v0, "MWI_ENABLED_KEY"

    return-object v0

    .line 135
    :cond_a
    const/16 v0, 0x19b

    if-ne p0, v0, :cond_b

    .line 136
    const-string v0, "PRESENCE_ENABLED_KEY"

    return-object v0

    .line 138
    :cond_b
    const/16 v0, 0x19c

    if-ne p0, v0, :cond_c

    .line 139
    const-string v0, "AUTOCONFIG_ENABLED_KEY"

    return-object v0

    .line 141
    :cond_c
    const/16 v0, 0x19d

    if-ne p0, v0, :cond_d

    .line 142
    const-string v0, "XDM_CLIENT_ENABLED_KEY"

    return-object v0

    .line 144
    :cond_d
    const/16 v0, 0x19e

    if-ne p0, v0, :cond_e

    .line 145
    const-string v0, "RCS_MESSAGING_ENABLED_KEY"

    return-object v0

    .line 147
    :cond_e
    const/16 v0, 0x19f

    if-ne p0, v0, :cond_f

    .line 148
    const-string v0, "CALL_MODE_PREF_ROAM_ENABLED_KEY"

    return-object v0

    .line 150
    :cond_f
    const/16 v0, 0x1a0

    if-ne p0, v0, :cond_10

    .line 151
    const-string v0, "RTT_ENABLED_KEY"

    return-object v0

    .line 153
    :cond_10
    const/16 v0, 0x1a1

    if-ne p0, v0, :cond_11

    .line 154
    const-string v0, "CARRIER_CONFIG_ENABLED_KEY"

    return-object v0

    .line 156
    :cond_11
    const/16 v0, 0x1a2

    if-ne p0, v0, :cond_12

    .line 157
    const-string v0, "WIFI_PROVISIONING_ID_KEY"

    return-object v0

    .line 159
    :cond_12
    const/16 v0, 0x1a3

    if-ne p0, v0, :cond_13

    .line 160
    const-string v0, "CALL_MODE_PREFERENCE_KEY"

    return-object v0

    .line 162
    :cond_13
    const/16 v0, 0x1a4

    if-ne p0, v0, :cond_14

    .line 163
    const-string v0, "CALL_MODE_ROAM_PREFERENCE_KEY"

    return-object v0

    .line 165
    :cond_14
    const/16 v0, 0x1a5

    if-ne p0, v0, :cond_15

    .line 166
    const-string v0, "SERVICE_MASK_BY_NETWORK_ENABLED_KEY"

    return-object v0

    .line 168
    :cond_15
    const/16 v0, 0x1a6

    if-ne p0, v0, :cond_16

    .line 169
    const-string v0, "OPTIONS_ENABLED_KEY"

    return-object v0

    .line 171
    :cond_16
    const/16 v0, 0x1a7

    if-ne p0, v0, :cond_17

    .line 172
    const-string v0, "CALL_COMPOSER_ENABLED_KEY"

    return-object v0

    .line 174
    :cond_17
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
