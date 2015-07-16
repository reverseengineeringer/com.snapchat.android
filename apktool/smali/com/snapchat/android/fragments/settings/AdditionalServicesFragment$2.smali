.class final Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$2;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/PermissionsExplanationFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/PermissionsExplanationFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
