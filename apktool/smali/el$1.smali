.class final Lel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lel$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lel$1;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(C)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lel$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lel$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
