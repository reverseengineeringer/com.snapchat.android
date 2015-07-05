.class final Lalb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalb;


# direct methods
.method constructor <init>(Lalb;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lalb$2;->a:Lalb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lalk;Lalc;Lbfl;Luc;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 456
    iget-object v0, p0, Lalb$2;->a:Lalb;

    move-object v5, p5

    check-cast v5, Lalb$b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lalb;->a(Lalb;Lalk;Lalc;Lbfl;Luc;Lalb$b;)V

    .line 457
    return-void
.end method
