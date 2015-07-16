.class final Ltd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltd;

.field final synthetic val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Ltd;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Ltd$4;->this$0:Ltd;

    iput-object p2, p0, Ltd$4;->val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Ltd$4;->val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;

    new-instance v1, Lsr;

    invoke-direct {v1, v0}, Lsr;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    invoke-virtual {v1}, Lsr;->execute()V

    .line 290
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
