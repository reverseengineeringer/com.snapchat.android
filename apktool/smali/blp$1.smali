.class final Lblp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lblp;


# direct methods
.method constructor <init>(Lblp;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lblp$1;->a:Lblp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lblp$1;->a:Lblp;

    invoke-static {v0}, Lblp;->a(Lblp;)V

    .line 98
    return-void
.end method
