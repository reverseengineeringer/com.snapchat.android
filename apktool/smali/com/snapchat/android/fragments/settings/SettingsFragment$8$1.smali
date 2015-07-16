.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;
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
.field final synthetic a:Lrl;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/SettingsFragment$8;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$8;Lrl;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;->b:Lcom/snapchat/android/fragments/settings/SettingsFragment$8;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;->a:Lrl;

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
    .line 381
    return-void
.end method

.method public final a(Lrl;Ljava/util/List;Z)V
    .locals 2
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
    .line 378
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;->a:Lrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrl;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 379
    return-void
.end method

.method public final b(Lrl;)V
    .locals 0
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 383
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
    .line 386
    return-void
.end method
