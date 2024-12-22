.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iput p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->lambda$triggerAutoConfiguration$4$vendor-qti-imsrcs-config-ImsConfigServiceImpl(I)V

    return-void
.end method
