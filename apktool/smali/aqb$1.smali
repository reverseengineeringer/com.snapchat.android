.class final Laqb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqb;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqb;


# direct methods
.method constructor <init>(Laqb;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Laqb$1;->a:Laqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Laqb$1;->a:Laqb;

    invoke-static {v0}, Laqb;->a(Laqb;)V

    .line 79
    return-void
.end method
