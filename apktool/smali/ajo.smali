.class public final Lajo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcht;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcht;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 17
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/JsonParseException;

    const-string v1, "Not a JsonPrimitive object."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v7

    new-instance v0, Lcht;

    invoke-direct/range {v0 .. v7}, Lcht;-><init>(IIIIIII)V

    return-object v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 6

    .prologue
    .line 17
    check-cast p1, Lcht;

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcht;->b:Lchg;

    invoke-virtual {v2}, Lchg;->E()Lchi;

    move-result-object v2

    iget-wide v4, p1, Lcht;->a:J

    invoke-virtual {v2, v4, v5}, Lchi;->a(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcht;->b:Lchg;

    invoke-virtual {v2}, Lchg;->C()Lchi;

    move-result-object v2

    iget-wide v4, p1, Lcht;->a:J

    invoke-virtual {v2, v4, v5}, Lchi;->a(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcht;->b:Lchg;

    invoke-virtual {v2}, Lchg;->u()Lchi;

    move-result-object v2

    iget-wide v4, p1, Lcht;->a:J

    invoke-virtual {v2, v4, v5}, Lchi;->a(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcht;->b:Lchg;

    invoke-virtual {v2}, Lchg;->m()Lchi;

    move-result-object v2

    iget-wide v4, p1, Lcht;->a:J

    invoke-virtual {v2, v4, v5}, Lchi;->a(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcht;->b:Lchg;

    invoke-virtual {v2}, Lchg;->j()Lchi;

    move-result-object v2

    iget-wide v4, p1, Lcht;->a:J

    invoke-virtual {v2, v4, v5}, Lchi;->a(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcht;->b:Lchg;

    invoke-virtual {v2}, Lchg;->g()Lchi;

    move-result-object v2

    iget-wide v4, p1, Lcht;->a:J

    invoke-virtual {v2, v4, v5}, Lchi;->a(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcht;->b:Lchg;

    invoke-virtual {v2}, Lchg;->d()Lchi;

    move-result-object v2

    iget-wide v4, p1, Lcht;->a:J

    invoke-virtual {v2, v4, v5}, Lchi;->a(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    return-object v0
.end method
