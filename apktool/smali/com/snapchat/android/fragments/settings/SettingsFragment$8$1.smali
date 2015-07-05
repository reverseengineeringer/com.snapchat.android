.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqv;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/SettingsFragment$8;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$8;Lqv;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;->b:Lcom/snapchat/android/fragments/settings/SettingsFragment$8;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;->a:Lqv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqv;)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 381
    return-void
.end method

.method public final a(Lqv;Ljava/util/List;Z)V
    .locals 2
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;->a:Lqv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 379
    return-void
.end method

.method public final b(Lqv;)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 383
    return-void
.end method

.method public final b(Lqv;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 386
    return-void
.end method
