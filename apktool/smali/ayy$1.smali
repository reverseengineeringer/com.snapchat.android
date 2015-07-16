.class final Layy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layy;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Layy;


# direct methods
.method constructor <init>(Layy;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Layy$1;->this$0:Layy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Layy$1;->this$0:Layy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Layy;->b(Z)V

    .line 170
    return-void
.end method
