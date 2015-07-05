.class final Lsn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsn;

.field final synthetic val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lsn;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lsn$4;->this$0:Lsn;

    iput-object p2, p0, Lsn$4;->val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lsn$4;->val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;

    new-instance v1, Lsb;

    invoke-direct {v1, v0}, Lsb;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    invoke-virtual {v1}, Lsb;->f()V

    .line 290
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
