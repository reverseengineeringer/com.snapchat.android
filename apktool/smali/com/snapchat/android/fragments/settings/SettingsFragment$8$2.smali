.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment$8;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$8;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$2;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrl;)V
    .locals 0
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 396
    return-void
.end method

.method public final a(Lrl;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl;",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public final b(Lrl;)V
    .locals 0
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 398
    return-void
.end method

.method public final b(Lrl;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl;",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 401
    return-void
.end method
