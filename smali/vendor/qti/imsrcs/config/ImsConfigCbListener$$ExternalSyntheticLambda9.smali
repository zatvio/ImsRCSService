.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

.field public final synthetic f$1:Lvendor/qti/ims/configservice/V1_0/SettingsData;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configservice/V1_0/SettingsData;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$1:Lvendor/qti/ims/configservice/V1_0/SettingsData;

    iput p3, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$2:I

    iput p4, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$1:Lvendor/qti/ims/configservice/V1_0/SettingsData;

    iget v2, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$2:I

    iget v3, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda9;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->lambda$handleGetSettingsResp$1$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configservice/V1_0/SettingsData;II)V

    return-void
.end method
