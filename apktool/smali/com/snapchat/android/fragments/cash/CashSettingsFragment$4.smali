.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lrh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrh;-><init>(B)V

    .line 114
    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;)V

    iput-object v1, v0, Lqv;->mListener:Lqv$a;

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 138
    return-void
.end method
