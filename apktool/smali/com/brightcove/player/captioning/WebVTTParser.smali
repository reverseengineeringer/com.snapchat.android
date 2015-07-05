.class public Lcom/brightcove/player/captioning/WebVTTParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final WEBVTT_TIMESTAMP_STRING:Ljava/lang/String; = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/brightcove/player/captioning/WebVTTParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/captioning/WebVTTParser;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/captioning/WebVTTParser;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/brightcove/player/model/WebVTTDocument;
    .locals 9

    .prologue
    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected WEBVTT. Got null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const-string v1, "WEBVTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected WEBVTT. Got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_2

    .line 72
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected an empty line after webvtt header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_3
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 82
    sget-object v1, Lcom/brightcove/player/captioning/WebVTTParser;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 83
    const-wide/16 v0, 0x0

    .line 85
    const-string v2, ""

    .line 88
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/brightcove/player/captioning/WebVTTParser;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v6

    .line 95
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/captioning/WebVTTParser;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    .line 100
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 103
    :cond_5
    new-instance v5, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    long-to-int v6, v6

    long-to-int v0, v0

    invoke-direct {v5, v6, v0, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;-><init>(IILjava/lang/String;)V

    .line 104
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 107
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 109
    new-instance v0, Lcom/brightcove/player/model/WebVTTDocument;

    invoke-direct {v0, v3}, Lcom/brightcove/player/model/WebVTTDocument;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static parseTimestamp(Ljava/lang/String;)J
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 119
    const-string v1, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "has invalid format"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    const-string v1, "\\."

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 124
    const-wide/16 v2, 0x0

    .line 125
    aget-object v4, v1, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 126
    const-wide/16 v8, 0x3c

    mul-long/2addr v2, v8

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method
