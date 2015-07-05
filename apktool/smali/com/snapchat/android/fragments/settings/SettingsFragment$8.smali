.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$8;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Lqx;

    invoke-direct {v0}, Lqx;-><init>()V

    .line 373
    new-instance v1, Lqy;

    invoke-direct {v1}, Lqy;-><init>()V

    .line 374
    new-instance v2, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$8;Lqv;)V

    iput-object v2, v0, Lqv;->mListener:Lqv$a;

    .line 389
    new-instance v2, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$8$2;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$8;)V

    iput-object v2, v1, Lqv;->mListener:Lqv$a;

    .line 403
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 404
    return-void
.end method
