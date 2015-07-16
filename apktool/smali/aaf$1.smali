.class final Laaf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laaf;


# direct methods
.method constructor <init>(Laaf;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Laaf$1;->a:Laaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamp$b;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Laaf$1;->a:Laaf;

    invoke-virtual {v0, p1}, Laaf;->a(Lamp$b;)V

    .line 69
    return-void
.end method
