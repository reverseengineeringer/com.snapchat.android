.class final Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->i()V

    .line 116
    return-void
.end method
