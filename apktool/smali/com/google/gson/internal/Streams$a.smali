.class final Lcom/google/gson/internal/Streams$a;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/Streams$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/google/gson/internal/Streams$a$a;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 81
    new-instance v0, Lcom/google/gson/internal/Streams$a$a;

    invoke-direct {v0}, Lcom/google/gson/internal/Streams$a$a;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/Streams$a;->b:Lcom/google/gson/internal/Streams$a$a;

    .line 84
    iput-object p1, p0, Lcom/google/gson/internal/Streams$a;->a:Ljava/lang/Appendable;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Streams$a;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gson/internal/Streams$a;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 94
    return-void
.end method

.method public final write([CII)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gson/internal/Streams$a;->b:Lcom/google/gson/internal/Streams$a$a;

    iput-object p1, v0, Lcom/google/gson/internal/Streams$a$a;->a:[C

    .line 89
    iget-object v0, p0, Lcom/google/gson/internal/Streams$a;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/gson/internal/Streams$a;->b:Lcom/google/gson/internal/Streams$a$a;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 90
    return-void
.end method
