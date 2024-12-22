.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

.field public final synthetic f$1:Lvendor/qti/ims/configaidlservice/SettingsData;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configaidlservice/SettingsData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda8;->f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda8;->f$1:Lvendor/qti/ims/configaidlservice/SettingsData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda8;->f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda8;->f$1:Lvendor/qti/ims/configaidlservice/SettingsData;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->lambda$handleGetUpdatedSettingsCb$9$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configaidlservice/SettingsData;)V

    return-void
.end method
